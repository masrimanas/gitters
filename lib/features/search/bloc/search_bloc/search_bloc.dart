import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gitters/features/search/common/enums.dart';
import 'package:gitters/features/search/data/models/issue.dart';
import 'package:gitters/features/search/data/models/repositories.dart';
import 'package:gitters/features/search/data/models/search_item.dart';
import 'package:gitters/features/search/search.dart';
import 'package:rxdart/rxdart.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(
    this.repo,
  ) : super(
          const SearchState(
            status: SearchStatus.initial,
            items: <SearchItem>[],
            items_lazy: <SearchItem>[],
            hasReachedMax: false,
            mode: SearchItemMode.users,
            page: 0,
            total_items: 0,
            keyword: '',
          ),
        ) {
    on<SearchEventFetched>(
      _onFetched,
      transformer: debounce(
        const Duration(milliseconds: 1000),
      ),
    );
    on<SearchEventChanged>(_onChanged);
    on<SearchEventNewQuery>(
      _onNewQuery,
      transformer: debounce(
        const Duration(milliseconds: 1000),
      ),
    );
    on<SearchEventGetPageNumber>(
      _onGetPageNumber,
      transformer: debounce(
        const Duration(milliseconds: 1000),
      ),
    );
    on<SearchEventGetItemLazy>(
      _onGetItemLazy,
      transformer: debounce(
        const Duration(milliseconds: 1000),
      ),
    );
  }

  final SearchRepositories repo;

  EventTransformer<T> debounce<T>(Duration duration) {
    return (events, mapper) {
      return events.debounceTime(duration).flatMap(mapper);
    };
  }

  Future<void> _onFetched(
    SearchEventFetched event,
    Emitter<SearchState> emit,
  ) async {
    if (state.page != 0 && (1000 / 10).ceil() == state.page) {
      emit(state.copyWith(hasReachedMax: true));
    }
    if (state.hasReachedMax) return;

    try {
      if (state.mode == SearchItemMode.users) {
        emit(state.copyWith(status: SearchStatus.loading));
        final items = await repo.searchGithubUser(
          state.keyword,
          event.page,
        );

        items.fold((failure) {
          emit(state.copyWith(status: SearchStatus.failure));
        }, (data) {
          final result = data['result'] as List<GithubUserModel>;
          emit(
            state.copyWith(
              // items: List.of(state.items)
              //   ..addAll(result.map(SearchItem.users).toList()),
              items_lazy: result.map(SearchItem.users).toList(),
              items: result.map(SearchItem.users).toList(),
              total_items: data['total'] as int,
              status: SearchStatus.success,

              page: event.page,
            ),
          );
        });
      } else if (state.mode == SearchItemMode.repo) {
        emit(state.copyWith(status: SearchStatus.loading));

        final items = await repo.searchRepositories(
          state.keyword,
          event.page,
        );

        items.fold((failure) {
          emit(state.copyWith(status: SearchStatus.failure));
        }, (data) {
          final result = data['result'] as List<RepositoriesModel>;
          emit(
            state.copyWith(
              // items: List.of(state.items)
              //   ..addAll(result.map(SearchItem.repositories).toList()),
              items_lazy: result.map(SearchItem.repositories).toList(),
              items: result.map(SearchItem.repositories).toList(),
              total_items: data['total'] as int,
              status: SearchStatus.success,

              page: event.page,
            ),
          );
        });
      } else if (state.mode == SearchItemMode.issue) {
        emit(state.copyWith(status: SearchStatus.loading));

        final items = await repo.searchIssue(
          state.keyword,
          event.page,
        );

        items.fold((failure) {
          emit(state.copyWith(status: SearchStatus.failure));
        }, (data) {
          final result = data['result'] as List<IssueModel>;
          emit(
            state.copyWith(
              // items: List.of(state.items)
              //   ..addAll(result.map(SearchItem.issues).toList()),
              items_lazy: result.map(SearchItem.issues).toList(),
              items: result.map(SearchItem.issues).toList(),
              total_items: data['total'] as int,
              status: SearchStatus.success,

              page: event.page,
            ),
          );
        });
      }
    } catch (_) {
      emit(state.copyWith(status: SearchStatus.failure));
    }
  }

  void _onChanged(
    SearchEventChanged event,
    Emitter<SearchState> emit,
  ) {
    emit(
      state.copyWith(
        keyword: '',
        mode: event.mode,
        status: SearchStatus.initial,
        items: <SearchItem>[],
        items_lazy: <SearchItem>[],
        hasReachedMax: false,
        page: 0,
        total_items: 0,
      ),
    );
  }

  void _onNewQuery(
    SearchEventNewQuery event,
    Emitter<SearchState> emit,
  ) {
    emit(
      state.copyWith(
        items: <SearchItem>[],
        items_lazy: <SearchItem>[],
        keyword: event.keyword,
        status: SearchStatus.initial,
        hasReachedMax: false,
        page: 0,
        total_items: 0,
      ),
    );
  }

  void _onGetPageNumber(
    SearchEventGetPageNumber event,
    Emitter<SearchState> emit,
  ) {
    emit(
      state.copyWith(
        page: event.num,
      ),
    );
  }

  Future<void> _onGetItemLazy(
    SearchEventGetItemLazy event,
    Emitter<SearchState> emit,
  ) async {
    if (state.page != 0 && (1000 / 10).ceil() == state.page) {
      emit(state.copyWith(hasReachedMax: true));
    }
    if (state.hasReachedMax) return;

    try {
      if (state.mode == SearchItemMode.users) {
        emit(state.copyWith(status: SearchStatus.loading));
        final items = await repo.searchGithubUser(
          state.keyword,
          state.page + 1,
        );

        items.fold((failure) {
          emit(state.copyWith(status: SearchStatus.failure));
        }, (data) {
          final result = data['result'] as List<GithubUserModel>;
          final listData = result.map(SearchItem.users).toList();
          emit(
            state.copyWith(
              items_lazy: [...state.items_lazy, ...listData],
              // items_lazy: List.of(state.items_lazy)
              //   ..addAll(result.map(SearchItem.users).toList()),
              total_items: data['total'] as int,
              status: SearchStatus.success,
              page: state.page + 1,
            ),
          );
        });
      } else if (state.mode == SearchItemMode.repo) {
        emit(state.copyWith(status: SearchStatus.loading));

        final items = await repo.searchRepositories(
          state.keyword,
          state.page + 1,
        );

        items.fold((failure) {
          emit(state.copyWith(status: SearchStatus.failure));
        }, (data) {
          final result = data['result'] as List<RepositoriesModel>;
          emit(
            state.copyWith(
              items_lazy: List.of(state.items_lazy)
                ..addAll(result.map(SearchItem.repositories).toList()),
              total_items: data['total'] as int,
              status: SearchStatus.success,
              page: state.page + 1,
            ),
          );
        });
      } else if (state.mode == SearchItemMode.issue) {
        emit(state.copyWith(status: SearchStatus.loading));

        final items = await repo.searchIssue(
          state.keyword,
          state.page + 1,
        );

        items.fold((failure) {
          emit(state.copyWith(status: SearchStatus.failure));
        }, (data) {
          final result = data['result'] as List<IssueModel>;
          emit(
            state.copyWith(
              items_lazy: List.of(state.items_lazy)
                ..addAll(result.map(SearchItem.issues).toList()),
              total_items: data['total'] as int,
              status: SearchStatus.success,
              page: state.page + 1,
            ),
          );
        });
      }
    } catch (_) {
      emit(state.copyWith(status: SearchStatus.failure));
    }
  }
}

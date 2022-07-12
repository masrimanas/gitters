import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gitters/features/search/common/enums.dart';
import 'package:gitters/features/search/data/models/issue.dart';
import 'package:gitters/features/search/data/models/repositories.dart';
import 'package:gitters/features/search/data/models/search_item.dart';
import 'package:gitters/features/search/search.dart';

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
            hasReachedMax: false,
            mode: SearchItemMode.users,
            page: 1,
            total_items: 0,
          ),
        ) {
    on<SearchEventFetched>(_onFetched);
    on<SearchEventChanged>(_onChanged);
  }

  final SearchRepositories repo;

  Future<void> _onFetched(
    SearchEventFetched event,
    Emitter<SearchState> emit,
  ) async {
    if ((state.total_items / 10).ceil() == state.page) {
      emit(state.copyWith(hasReachedMax: true));
    }
    if (state.hasReachedMax) return;

    try {
      if (state.status == SearchStatus.initial) {
        if (state.mode == SearchItemMode.users) {
          final items = await repo.searchGithubUser(event.keyword, state.page);

          items.fold((failure) {
            emit(state.copyWith(status: SearchStatus.failure));
          }, (data) {
            final result = data['result'] as List<GithubUserModel>;
            emit(
              state.copyWith(
                // items: List.of(state.items)
                //   ..addAll(result.map(SearchItem.users).toList()),
                items: result.map(SearchItem.users).toList(),
                total_items: data['total'] as int,
                status: SearchStatus.success,
              ),
            );
          });
        } else if (state.mode == SearchItemMode.repo) {
          final items =
              await repo.searchRepositories(event.keyword, state.page);

          items.fold((failure) {
            emit(state.copyWith(status: SearchStatus.failure));
          }, (data) {
            final result = data['result'] as List<RepositoriesModel>;
            emit(
              state.copyWith(
                // items: List.of(state.items)
                //   ..addAll(result.map(SearchItem.repositories).toList()),
                items: result.map(SearchItem.repositories).toList(),
                total_items: data['total'] as int,
                status: SearchStatus.success,
              ),
            );
          });
        } else if (state.mode == SearchItemMode.issue) {
          final items = await repo.searchIssue(event.keyword, state.page);

          items.fold((failure) {
            emit(state.copyWith(status: SearchStatus.failure));
          }, (data) {
            final result = data['result'] as List<IssueModel>;
            emit(
              state.copyWith(
                // items: List.of(state.items)
                //   ..addAll(result.map(SearchItem.issues).toList()),
                items: result.map(SearchItem.issues).toList(),
                total_items: data['total'] as int,
                status: SearchStatus.success,
              ),
            );
          });
        }
      }
    } catch (_) {
      emit(state.copyWith(status: SearchStatus.failure));
    }
  }

  void _onChanged(
    SearchEventChanged event,
    Emitter<SearchState> emit,
  ) {
    emit(state.copyWith(mode: event.mode));
  }
}

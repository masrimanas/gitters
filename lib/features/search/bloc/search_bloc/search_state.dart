part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required SearchStatus status,
    required List<SearchItem> items,
    required List<SearchItem> items_lazy,
    required bool hasReachedMax,
    required SearchItemMode mode,
    required int total_items,
    required int page,
    required String keyword,
  }) = _SearchState;
}

part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required SearchStatus status,
    required List<SearchItem> items,
    required bool hasReachedMax,
    required SearchItemMode mode,
    required int total_items,
    required int page,
  }) = _SearchState;
}

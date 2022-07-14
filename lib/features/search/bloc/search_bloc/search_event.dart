part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.fetched(int page) = SearchEventFetched;
  const factory SearchEvent.changed(SearchItemMode mode) = SearchEventChanged;
  const factory SearchEvent.newQuery(String keyword) = SearchEventNewQuery;
  const factory SearchEvent.getPageNumber(int num) = SearchEventGetPageNumber;
  const factory SearchEvent.getItemLazy() = SearchEventGetItemLazy;
}

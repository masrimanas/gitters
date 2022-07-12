part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.fetched(String keyword) = SearchEventFetched;
  const factory SearchEvent.changed(SearchItemMode mode) = SearchEventChanged;
}

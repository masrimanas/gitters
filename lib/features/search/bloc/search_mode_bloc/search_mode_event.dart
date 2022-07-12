part of 'search_mode_bloc.dart';

@freezed
class SearchModeEvent with _$SearchModeEvent {
  const factory SearchModeEvent.changeMode(SearchModeOption mode) =
      SearchModeEventChangeMode;
}

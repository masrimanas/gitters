part of 'search_mode_bloc.dart';

@freezed
class SearchModeState with _$SearchModeState {
  const factory SearchModeState.initial() = _SearchModeStateInitial;
  const factory SearchModeState.loading() = _SearchModeStateLoading;
  const factory SearchModeState.mode({required SearchModeOption mode}) =
      _SearchModeStateMode;
}

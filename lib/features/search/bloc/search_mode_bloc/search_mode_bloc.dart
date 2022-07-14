import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gitters/features/search/common/enums.dart';

part 'search_mode_bloc.freezed.dart';
part 'search_mode_event.dart';
part 'search_mode_state.dart';

class SearchModeBloc extends Bloc<SearchModeEvent, SearchModeState> {
  SearchModeBloc()
      : super(const SearchModeState.mode(mode: SearchModeOption.lazyLoaded)) {
    on<SearchModeEventChangeMode>((event, emit) {
      emit(SearchModeState.mode(mode: event.mode));
    });
  }
}

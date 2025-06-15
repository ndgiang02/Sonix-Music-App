import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_bloc.freezed.dart';
part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(const MainState()) {
    on<_OnChangePage>(_onChangePage);
  }

  void _onChangePage(_OnChangePage event, Emitter<MainState> emit) {
    emit(state.copyWith(index: event.index));
  }
}

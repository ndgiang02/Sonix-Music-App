import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sonix/core/utils/load_status.dart';

import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState()) {
    on<AuthStarted>(_onStarted);
    on<ShowBottomSheet>(_onShowBottomSheet);
    on<HideBottomSheet>(_onHideBottomSheet);
  }

  Future<void> _onStarted(AuthStarted event, Emitter<AuthState> emit) async {
    emit(state.copyWith(loadStatus: LoadStatus.Loading));
    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(loadStatus: LoadStatus.Done));
  }

  void _onShowBottomSheet(ShowBottomSheet event, Emitter<AuthState> emit) {
    print('ShowBottomSheet event: ${event.type}');
    if (!state.isSheetOpen) {
      emit(state.copyWith(sheetType: event.type, isSheetOpen: true));
    } else {
      print('Bottom sheet already open, ignoring ShowBottomSheet');
    }
  }

  void _onHideBottomSheet(HideBottomSheet event, Emitter<AuthState> emit) {
    print('HideBottomSheet event');
    emit(
      state.copyWith(
        sheetType: null,
        isSheetOpen: false, // Sửa thành false để reset trạng thái
      ),
    );
  }
}

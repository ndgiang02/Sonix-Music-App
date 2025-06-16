import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sonix/core/common/enums/sheet_type.dart';
import 'package:sonix/core/common/translations/l10n.dart';
import 'package:sonix/core/extensions/valid_email.dart';
import 'package:sonix/core/extensions/valid_password.dart';
import 'package:sonix/core/state/bloc/page_command.dart';
import 'package:sonix/core/state/bloc/page_state.dart';
import 'package:sonix/core/storage/session_controller.dart';
import 'package:sonix/core/utils/dialog_utils.dart';
import 'package:sonix/injection.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState()) {
    on<OnInitData>(_onInit);
    on<OnChangeEmail>(_onChangeEmail);
    on<OnChangePassword>(_onChangePassword);
    on<OnTogglePasswordVisibility>(
      (e, emit) => emit(state.copyWith(visibilityOffPassword: e.value)),
    );
    on<OnToggleRememberMe>(
      (e, emit) => emit(state.copyWith(isRememberMe: e.value)),
    );
    on<OnLogin>(_onLogin);
    on<OnSignUp>(_onSignUp);
    on<OnNavigate>(
      (e, emit) => emit(state.copyWith(pageCommand: e.pageCommand)),
    );
    on<OnClearPageCommand>(
      (_, emit) => emit(state.copyWith(pageCommand: null)),
    );
    on<OnOpenSheet>((event, emit) {
      emit(state.copyWith(isSheetOpen: true, sheetType: event.sheetType));
    });
  }

  Future<void> _onInit(OnInitData event, Emitter<AuthState> emit) async {
    final savedEmail = await getIt<SessionController>().getRememberMe();
    emit(state.copyWith(email: savedEmail));
  }

  void _onChangeEmail(OnChangeEmail event, Emitter<AuthState> emit) {
    emit(
      state.copyWith(
        email: event.email,
        isEnable: event.email.isNotEmpty && state.password.isNotEmpty,
      ),
    );
  }

  void _onChangePassword(OnChangePassword event, Emitter<AuthState> emit) {
    emit(
      state.copyWith(
        password: event.password,
        isEnable: event.password.isNotEmpty && state.email.isNotEmpty,
      ),
    );
  }

  Future<void> _onLogin(OnLogin event, Emitter<AuthState> emit) async {
    if (!state.email.isValidEmail) {
      emit(state.copyWith(errEmail: S.of(event.context).err_email_invalid));
      return;
    }

    if (!state.password.isValidPassWord) {
      emit(
        state.copyWith(errPassword: S.of(event.context).err_invalid_password),
      );
      return;
    }

    try {
      DialogUtils.loading();

      await Future.delayed(const Duration(milliseconds: 800));

      emit(
        state.copyWith(
          status: PageState.success,
          pageCommand: PageCommandNavigatorPage(page: '/main'),
        ),
      );
    } finally {
      DialogUtils.hideLoading();
    }
  }

  Future<void> _onSignUp(OnSignUp event, Emitter<AuthState> emit) async {
    if (!state.email.isValidEmail) {
      emit(state.copyWith(errEmail: S.of(event.context).err_email_invalid));
      return;
    }

    if (!state.password.isValidPassWord) {
      emit(
        state.copyWith(errPassword: S.of(event.context).err_invalid_password),
      );
      return;
    }

    try {
      DialogUtils.loading();

      await Future.delayed(const Duration(seconds: 1));
      emit(
        state.copyWith(
          status: PageState.success,
          pageCommand: PageCommandShowBottomSheet(
            sheetType: SheetType.login,
            argument: state.email,
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: PageState.error,
          pageCommand: PageCommandShowAlertError('Unknown error'),
        ),
      );
    } finally {
      DialogUtils.hideLoading();
    }
  }
}

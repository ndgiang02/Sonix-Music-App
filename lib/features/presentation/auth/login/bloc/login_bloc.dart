import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sonix/core/common/translations/l10n.dart';
import 'package:sonix/core/extensions/valid_email.dart';
import 'package:sonix/core/extensions/valid_password.dart';
import 'package:sonix/core/state/bloc/page_command.dart';
import 'package:sonix/core/state/bloc/page_state.dart';
import 'package:sonix/core/storage/session_controller.dart';
import 'package:sonix/core/utils/dialog_utils.dart';
import 'package:sonix/injection.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState()) {
    on<OnInitData>((event, emit) async {
      String? email = await getIt.get<SessionController>().getRememberMe();
      emit(state.copyWith(isRememberMe: false, email: email));
    });
    on<OnSelectedRemember>((event, emit) {
      emit(state.copyWith(isRememberMe: event.value));
    });
    on<OnVisibilityPassword>((event, emit) {
      emit(state.copyWith(visibilityOffPassword: event.value));
    });
    on<OnChangePassword>((event, emit) {
      emit(state.copyWith(password: event.value, isEnable: isEnable));
    });
    on<OnChangeEmail>((event, emit) {
      emit(state.copyWith(email: event.value, isEnable: isEnable));
    });
    on<OnLogin>((event, emit) async {
      if (!state.email!.isValidEmail) {
        emit(state.copyWith(errEmail: S.of(event.ctx).err_email_invalid));
      } else if (state.password!.length < 5) {
        emit(state.copyWith(errPassword: S.of(event.ctx).err_invalid_pass));
      } else if (!state.password!.isValidPassWord) {
        emit(state.copyWith(errPassword: S.of(event.ctx).err_invalid_password));
      } else {
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
    });
    on<OnNavigate>((event, emit) {
      emit(state.copyWith(pageCommand: event.pageCommand));
    });
    on<OnClearPage>((event, emit) {
      emit(state.copyWith(pageCommand: null));
    });
  }

  bool get isEnable => state.password != null && state.email != null;
}

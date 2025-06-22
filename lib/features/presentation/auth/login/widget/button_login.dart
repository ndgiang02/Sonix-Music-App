import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sonix/core/common/translations/l10n.dart';
import 'package:sonix/core/common/widgets/custom_button.dart';
import 'package:sonix/core/configs/constants/constant.dart';
import 'package:sonix/features/presentation/auth/login/bloc/login_bloc.dart';

class ButtonLogin extends StatelessWidget {
  final LoginBloc bloc;

  const ButtonLogin({super.key, required this.bloc});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      bloc: bloc,
      builder: (context, state) {
        return CustomButton(
          text: S.of(context).btn_login,
          enable: state.isEnable,
          action: () {
            FocusScope.of(context).requestFocus(FocusNode());
            bloc.add(LoginEvent.onLogin(context));
          },
          backgroundColor: Theme.of(context).colorScheme.primary,
          textColor: background,
          showBorder: false,
          fontWeight: FontWeight.w600,
          sizeText: 16,
        );
      },
    );
  }
}

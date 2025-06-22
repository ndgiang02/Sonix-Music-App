import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sonix/core/common/translations/l10n.dart';
import 'package:sonix/core/common/widgets/custom_textfield.dart';
import 'package:sonix/core/common/widgets/svg_widget.dart';
import 'package:sonix/core/configs/constants/icons.dart';
import 'package:sonix/features/presentation/auth/login/bloc/login_bloc.dart';

class EmailInput extends StatelessWidget {
  final LoginBloc bloc;
  const EmailInput({super.key, required this.bloc});

  @override
  Widget build(BuildContext context) {
    TextEditingController ctrEmail = TextEditingController();
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen:
          (previous, current) =>
              previous.email != current.email ||
              previous.errEmail != current.errEmail,
      bloc: bloc,
      builder: (context, state) {
        ctrEmail.text = state.email ?? "";
        return CustomTextField(
          initValue: state.email,
          hintText: S.of(context).hint_text_email,
          keyboardType: TextInputType.emailAddress,
          error: state.errEmail,
          prefixWidget: SvgWidget(ic: icEmail),
          onChanged: (val) => bloc.add(LoginEvent.onChangeEmail(val)),
          ctr: ctrEmail,
        );
      },
    );
  }
}

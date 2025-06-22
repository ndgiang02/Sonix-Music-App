import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sonix/core/common/translations/l10n.dart';
import 'package:sonix/core/common/widgets/svg_widget.dart';
import 'package:sonix/core/configs/constants/errors.dart';
import 'package:sonix/core/configs/constants/icons.dart';
import 'package:sonix/core/routing/routes_const.dart';
import 'package:sonix/core/state/bloc/page_command.dart';
import 'package:sonix/core/utils/responsive.dart';
import 'package:sonix/features/presentation/auth/login/widget/button_login.dart';
import 'package:sonix/features/presentation/auth/login/widget/email_input.dart';
import 'package:sonix/features/presentation/auth/login/widget/login_social.dart';
import 'package:sonix/features/presentation/auth/login/widget/password_input.dart';
import 'package:sonix/injection.dart';

import 'bloc/login_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = getIt<LoginBloc>();
    return BlocProvider(
      create: (context) => bloc..add(LoginEvent.onInitData()),
      child: BlocListener<LoginBloc, LoginState>(
        bloc: bloc,
        listener: (context, state) {
          if (state.pageCommand is PageCommandNavigatorPage) {
            onNavigate(
              context,
              state.pageCommand as PageCommandNavigatorPage,
              bloc,
            );
          } else if (state.pageCommand is PageCommandShowAlertError) {
            final pageCmd = state.pageCommand as PageCommandShowAlertError;
            if (pageCmd.msg == userNotFound) {
              pageCmd.msg = S.of(context).err_no_user_found_for_that_email;
            } else if (pageCmd.msg == invalidCredential) {
              pageCmd.msg = S.of(context).err_check_again_email_password;
            } else if (pageCmd.msg == unknownError) {
              pageCmd.msg = S.of(context).err_no_user_found_for_that_email;
            }
            final snackBar = SnackBar(content: Text(pageCmd.msg));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          } else if (state.pageCommand is PageCommandDialog) {
            onDialog(context, state.pageCommand as PageCommandDialog);
          }
          bloc.add(LoginEvent.onClearPage());
        },
        child: Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 20,
              bottom: 24,
            ),
            child: Column(
              children: [
                const SvgWidget(ic: icLogo),
                const SizedBox(height: 32),
                Text(
                  S.of(context).txt_login_to_your_account,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 32),
                EmailInput(bloc: bloc),
                const SizedBox(height: 24),
                PasswordInput(bloc: bloc),
                const SizedBox(height: 20),
                BlocBuilder<LoginBloc, LoginState>(
                  builder: (context, state) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            bloc.add(
                              LoginEvent.onSelectedRemember(
                                !state.isRememberMe,
                              ),
                            );
                          },
                          borderRadius: BorderRadius.circular(8),
                          child: Row(
                            children: [
                              AnimatedCrossFade(
                                duration: const Duration(milliseconds: 250),
                                firstChild: SvgPicture.asset(
                                  icChecked,
                                  width: 20,
                                  height: 20,
                                ),
                                secondChild: SvgPicture.asset(
                                  icUnChecked,
                                  width: 20,
                                  height: 20,
                                ),
                                crossFadeState:
                                    state.isRememberMe
                                        ? CrossFadeState.showFirst
                                        : CrossFadeState.showSecond,
                              ),
                              const SizedBox(width: Spacing.x3),
                              Text(
                                S.of(context).txt_remember_me,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              '/forgot-password',
                            ); // Sửa route
                          },
                          borderRadius: BorderRadius.circular(8),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              S.of(context).btn_forgot_fassword,
                              style: Theme.of(context).textTheme.bodyMedium
                                  ?.copyWith(color: Colors.red),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(height: 20),
                ButtonLogin(bloc: bloc),
                const SizedBox(height: 16),
                Row(
                  children: [
                    const SizedBox(width: 20),
                    const Expanded(child: Divider()),
                    const SizedBox(width: 12),
                    Text(
                      S.of(context).txt_or_continue_with,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(width: 12),
                    const Expanded(child: Divider()),
                    const SizedBox(width: 20),
                  ],
                ),
                const SizedBox(height: 20),
                SignUpOrSignInSocial(
                  onPressedFaceBook:
                      () => bloc.add(LoginEvent.onSignInFacebook()),
                  onPressedGoogle:
                      () => bloc.add(LoginEvent.onSignInFacebook()),
                  onPressedApple: () => bloc.add(LoginEvent.onSignInApple()),
                ),
                const SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    text: S.of(context).txt_dont_have_an_account,
                    style: Theme.of(context).textTheme.bodyMedium,
                    children: [
                      TextSpan(
                        text: S.of(context).btn_sign_up,
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium!.copyWith(color: Colors.red),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap =
                                  () => bloc.add(
                                    LoginEvent.onNavigate(
                                      PageCommandNavigatorPage(
                                        page: signUpRoute,
                                      ),
                                    ),
                                  ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onDialog(BuildContext context, PageCommandDialog page) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Text(S.of(context).title_verify_your_email),
          content: Text(S.of(context).mgs_verify_email),
        );
      },
    );
  }

  void onNavigate(
    BuildContext ctx,
    PageCommandNavigatorPage pageCommand,
    LoginBloc bloc,
  ) async {
    if (pageCommand.page == '/main') {
      final result = await ctx.push<String>(signUpRoute);
      if (result != null) {
        bloc.add(LoginEvent.onChangeEmail(result));
      }
    } else if (pageCommand.page == mainRoute) {
      ctx.go('/main');
    } else {
      ctx.push(pageCommand.page!);
    }
  }
}

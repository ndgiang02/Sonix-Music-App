import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sonix/core/common/enums/sheet_type.dart';
import 'package:sonix/core/common/widgets/custom_button.dart';
import 'package:sonix/core/configs/constants/constant.dart';
import 'package:sonix/core/state/bloc/page_command.dart';
import 'package:sonix/core/utils/responsive.dart';
import 'package:sonix/features/presentation/auth/bloc/auth_bloc.dart';
import 'package:sonix/features/presentation/auth/widget/login_bottom_sheet.dart';
import 'package:sonix/features/presentation/auth/widget/register_bottom_sheet.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) async {
        final command = state.pageCommand;
        if (command is PageCommandShowBottomSheet) {
          await showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            isDismissible: true,
            enableDrag: true,
            builder: (_) {
              return ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: Responsive.height(55, context),
                ),
                child:
                    command.sheetType == SheetType.login
                        ? const LoginBottomSheet()
                        : const RegisterBottomSheet(),
              );
            },
          );
          context.read<AuthBloc>().add(OnClearPageCommand());
        } else if (command is PageCommandNavigatorPage) {
          context.go(command.page!);
          context.read<AuthBloc>().add(OnClearPageCommand());
        }
      },
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          body: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imgBg),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 50.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomButton(
                        text: 'Login',
                        onPressed: () {
                          context.read<AuthBloc>().add(
                            AuthEvent.openSheet(SheetType.login),
                          );
                        },
                        backgroundColor: secondary,
                        textColor: background,
                        showBorder: true,
                        fontWeight: FontWeight.normal,
                        sizeText: 20,
                      ),
                      const SizedBox(height: 20),
                      CustomButton(
                        text: 'Register',
                        onPressed: () {
                          context.read<AuthBloc>().add(
                            AuthEvent.openSheet(SheetType.register),
                          );
                        },
                        backgroundColor: primary,
                        textColor: background,
                        showBorder: false,
                        fontWeight: FontWeight.normal,
                        sizeText: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

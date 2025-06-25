import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sonix/core/common/translations/l10n.dart';
import 'package:sonix/core/common/widgets/custom_button.dart';
import 'package:sonix/core/configs/constants/constant.dart';
import 'package:sonix/core/state/bloc/page_command.dart';
import 'package:sonix/core/utils/responsive.dart';
import 'package:sonix/features/presentation/splash/bloc/splash_bloc.dart';
import 'package:sonix/injection.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SplashBloc>()..add(SplashEvent.started()),
      child: BlocListener<SplashBloc, SplashState>(
        listenWhen: (previous, current) => previous.pageCmd != current.pageCmd,
        listener: (context, state) {
          if (state.pageCmd is PageCommandNavigatorPage) {
            final pageCmd = state.pageCmd as PageCommandNavigatorPage;
            context.go(pageCmd.page!);
          }
        },
        child: BlocBuilder<SplashBloc, SplashState>(
          builder: (context, state) {
            return Scaffold(
              backgroundColor: Colors.black,
              body: Stack(
                children: [
                  Center(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        app_name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: Responsive.height(8, context),
                    left: 0,
                    right: 0,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AnimatedTextKit(
                          isRepeatingAnimation: false,
                          totalRepeatCount: 1,
                          animatedTexts: [
                            TyperAnimatedText(
                              'Enjoy listening to music',
                              textStyle: const TextStyle(
                                fontSize: 16,
                                color: Colors.white70,
                              ),
                              speed: const Duration(milliseconds: 50),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        AnimatedOpacity(
                          opacity: state.showButton ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 500),
                          child: CustomButton(
                            text: S.of(context).btn_get_started,
                            action: () => context.go('/login'),
                            backgroundColor: primary,
                            textColor: secondary,
                            showBorder: false,
                            fontWeight: FontWeight.w700,
                            sizeText: 20,
                            enable: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

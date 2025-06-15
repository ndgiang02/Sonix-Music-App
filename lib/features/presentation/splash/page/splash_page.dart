import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sonix/core/common/widgets/custom_button.dart';
import 'package:sonix/core/configs/constants/constant.dart';
import 'package:sonix/core/state/bloc/page_command.dart';
import 'package:sonix/core/utils/responsive.dart';
import 'package:sonix/features/presentation/splash/bloc/splash_bloc.dart';
import 'package:sonix/injection.dart';

/*class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SplashCubit()..startAnimation(),
      child: const SplashView(),
    );
  }
}

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashCubit, bool>(
      builder: (context, showButtons) {
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
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.white70,
                          ),
                          speed: const Duration(milliseconds: 50),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),

                    AnimatedOpacity(
                      opacity: showButtons ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 500),
                      child: Center(
                        child: CustomButton(
                          text: 'Get Started',
                          onPressed: () {
                            context.go('/auth');
                          },
                          backgroundColor: primary,
                          textColor: secondary,
                          showBorder: false,
                          fontWeight: FontWeight.w700,
                          sizeText: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}*/

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

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
            context.read<SplashBloc>().add(
              const SplashEvent.clearPageCommand(),
            );
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
                            text: 'Get Started',
                            onPressed: () => context.go('/auth'),
                            backgroundColor: primary,
                            textColor: secondary,
                            showBorder: false,
                            fontWeight: FontWeight.w700,
                            sizeText: 20,
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

/*
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
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

            // Clear the navigation command to prevent duplicate navigation
            context.read<SplashBloc>().add(
              const SplashEvent.clearPageCommand(),
            );
          }
        },
        child: Scaffold(
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
                      opacity: showButtons ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 500),
                      child: CustomButton(
                        text: 'Get Started',
                        onPressed: () => context.go('/auth'),
                        backgroundColor: primary,
                        textColor: secondary,
                        showBorder: false,
                        fontWeight: FontWeight.w700,
                        sizeText: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/

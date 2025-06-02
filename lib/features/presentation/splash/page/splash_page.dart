import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sonix/core/constants/constant.dart';
import 'package:sonix/core/utils/responsive.dart';
import 'package:sonix/core/widgets/custom_button.dart';
import 'package:sonix/features/presentation/splash/bloc/splash_cubit.dart';

class SplashPage extends StatelessWidget {
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
                          backgroundColor: AppColors.primary,
                          textColor: AppColors.secondary,
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
}

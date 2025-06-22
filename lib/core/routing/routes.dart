import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:sonix/features/presentation/auth/login/login_screen.dart';
import 'package:sonix/features/presentation/home/home_screen.dart';
import 'package:sonix/features/presentation/player/play_screen.dart';

import '../../features/presentation/main/main_screen.dart';
import '../../features/presentation/splash/splash_screen.dart';

class AppRoutes {
  static GoRouter getRouter(BuildContext context) {
    return GoRouter(
      initialLocation: '/main',
      /*   redirect: (context, state) {
        return _redirect(context, state, sessionController);
      },*/
      routes: [
        GoRoute(path: '/splash', builder: (context, state) => SplashScreen()),

        GoRoute(
          path: '/login',
          pageBuilder:
              (context, state) => CustomTransitionPage(
                child: LoginScreen(),
                transitionsBuilder: _customTransition,
              ),
        ),

        GoRoute(path: '/home', builder: (context, state) => HomeScreen()),
        GoRoute(path: '/play', builder: (context, state) => PlayScreen()),
        GoRoute(path: '/main', builder: (context, state) => MainScreen()),
      ],
    );
  }

  static Widget _customTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, 0.2),
        end: Offset.zero,
      ).animate(CurvedAnimation(parent: animation, curve: Curves.easeOut)),
      child: FadeTransition(opacity: animation, child: child),
    );
  }
}

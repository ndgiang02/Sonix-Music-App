import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:sonix/core/storage/session_controller.dart';
import 'package:sonix/features/presentation/auth/page/auth_page.dart';
import 'package:sonix/features/presentation/home/page/home_page.dart';
import 'package:sonix/features/presentation/splash/page/splash_page.dart';

class AppRoutes {
  static GoRouter getRouter(BuildContext context) {
    final sessionController = SessionController();
    return GoRouter(
      initialLocation: '/home',
      /*   redirect: (context, state) {
        return _redirect(context, state, sessionController);
      },*/
      routes: [
        GoRoute(path: '/splash', builder: (context, state) => SplashPage()),
        GoRoute(
          path: '/auth',
          pageBuilder:
              (context, state) => CustomTransitionPage(
                child: AuthPage(),
                transitionsBuilder: _customTransition,
              ),
        ),
        GoRoute(path: '/home', builder: (context, state) => HomePage()),
      ],
    );
  }

  static String? _redirect(
    BuildContext context,
    GoRouterState state,
    SessionController sessionController,
  ) {
    if (sessionController.isLogin == false &&
        state.matchedLocation != '/splash') {
      return '/splash';
    }

    if (sessionController.isLogin == true) {
      return '/main';
    }

    return null;
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

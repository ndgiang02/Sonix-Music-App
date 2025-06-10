import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/constants/constant.dart';
import 'core/routing/routes.dart';
import 'features/presentation/auth/bloc/auth_bloc.dart';
import 'features/presentation/auth/bloc/auth_event.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Bottom',
      theme: themeData1(context),
      home: MainPage(),
    );
  }
}
*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc()..add(AuthStarted()),
      child: MaterialApp.router(
        title: app_name,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'SF-Pro-Display'),
        routerConfig: AppRoutes.getRouter(context),
      ),
    );
  }
}

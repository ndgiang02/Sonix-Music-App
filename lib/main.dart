import 'package:flutter/material.dart';

import 'features/presentation/home/page/home_page.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Bottom Nav Demo',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
      home: const HomePage(),
    );
  }
}

/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc()..add(AuthStarted()),
      child: MaterialApp.router(
        title: app_name,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'SF-Pro-Display', useMaterial3: true),
        routerConfig: AppRoutes.getRouter(context),
      ),
    );
  }
}
*/

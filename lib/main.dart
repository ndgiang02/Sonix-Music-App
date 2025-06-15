import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sonix/core/configs/constants/constant.dart';
import 'package:sonix/core/state/cubit/app_cubit.dart';

import 'core/common/translations/l10n.dart';
import 'core/routing/routes.dart';
import 'core/theme/app_theme.dart';
import 'injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(AnnotatedRegion(value: SystemUiOverlayStyle.light, child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt.get<AppCubit>()..getLocale()),
      ],
      child: BlocBuilder<AppCubit, AppState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          return MaterialApp.router(
            title: app_name,
            debugShowCheckedModeBanner: false,
            theme: themeData(context),
            routerConfig: AppRoutes.getRouter(context),
            locale: state.locale,
            supportedLocales: const [Locale("vi"), Locale("en")],
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
          );
        },
      ),
    );
  }
}

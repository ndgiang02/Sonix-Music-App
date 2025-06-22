import 'package:get_it/get_it.dart';
import 'package:sonix/core/storage/session_controller.dart';
import 'package:sonix/features/presentation/auth/login/bloc/login_bloc.dart';
import 'package:sonix/features/presentation/splash/bloc/splash_bloc.dart';

import 'core/state/cubit/app_cubit.dart';
import 'features/presentation/main/bloc/main_bloc.dart';
import 'features/presentation/profile/bloc/profile_bloc.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  getIt.registerSingleton(AppCubit());

  getIt.registerSingletonAsync(() async {
    final preferences = SessionController();
    await preferences.getSavedLocale();
    return preferences;
  });

  getIt.registerFactory(() => SplashBloc());

  getIt.registerFactory(() => LoginBloc());

  getIt.registerLazySingleton(() => MainBloc());

  getIt.registerLazySingleton(() => ProfileBloc());
}

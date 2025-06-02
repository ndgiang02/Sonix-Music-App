import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'features/presentation/auth/bloc/auth_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc
  sl.registerFactory(() => AuthBloc());

  // Use cases
  //sl.registerLazySingleton(() => Login(sl()));

  // Repository

  // Data sources

  // External
  sl.registerLazySingleton(() => Dio());
}

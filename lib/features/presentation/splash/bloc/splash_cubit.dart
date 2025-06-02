import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<bool> {
  SplashCubit() : super(false);

  void startAnimation() async {
    await Future.delayed(const Duration(seconds: 2));
    emit(true);
  }
}

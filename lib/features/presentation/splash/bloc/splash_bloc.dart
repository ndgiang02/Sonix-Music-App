import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sonix/core/state/bloc/page_command.dart';
import 'package:sonix/core/storage/session_controller.dart';
import 'package:sonix/injection.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final SessionController sessionController = getIt<SessionController>();

  SplashBloc() : super(const SplashState()) {
    on<_Started>((event, emit) async {
      await sessionController.getUserFromPreference();
      if (sessionController.isLogin) {
        emit(state.copyWith(pageCmd: PageCommandNavigatorPage(page: '/main')));
      } else {
        await Future.delayed(const Duration(seconds: 2));
        emit(state.copyWith(showButton: true));
      }
    });

    on<_ClearPageCommand>((event, emit) {
      emit(state.copyWith(pageCmd: null));
    });
  }
}

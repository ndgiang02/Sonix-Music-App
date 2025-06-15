import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sonix/core/configs/constants/language_code.dart';
import 'package:sonix/core/storage/session_controller.dart';

part 'app_cubit.freezed.dart';
part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState());

  final _session = SessionController();
  Future<void> getLocale() async {
    try {
      final localeStr = await _session.localStorage.readValue('locale');

      String localeName;
      if (localeStr == null || localeStr.isEmpty) {
        localeName = Platform.localeName;
        await _session.localStorage.setValue('locale', localeName);
      } else {
        localeName = localeStr;
      }

      final parts = localeName.split('_');
      emit(
        state.copyWith(
          locale: Locale(parts[0], parts.length > 1 ? parts[1] : null),
        ),
      );
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> changeLocale(Locale locale) async {
    final localeStr = locale.toString();
    await _session.localStorage.setValue('locale', localeStr);
    emit(state.copyWith(locale: locale));
  }
}

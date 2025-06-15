part of 'splash_bloc.dart';

@freezed
class SplashEvent with _$SplashEvent {
  const factory SplashEvent.started() = _Started;
  const factory SplashEvent.showButton() = _ShowButton;
  const factory SplashEvent.clearPageCommand() = _ClearPageCommand;
}

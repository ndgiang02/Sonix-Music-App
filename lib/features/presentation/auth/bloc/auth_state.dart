part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool isRememberMe,
    @Default(false) bool visibilityOffPassword,
    @Default(false) bool isEnable,
    String? errEmail,
    String? errPassword,
    @Default(PageState.init) PageState status,
    PageCommand? pageCommand,
    @Default(false) bool isSheetOpen,
    SheetType? sheetType,
  }) = _AuthState;
}

part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.init() = OnInitData;

  const factory AuthEvent.toggleRememberMe(bool value) = OnToggleRememberMe;
  const factory AuthEvent.togglePasswordVisibility(bool value) =
      OnTogglePasswordVisibility;

  const factory AuthEvent.changeEmail(String email) = OnChangeEmail;
  const factory AuthEvent.changePassword(String password) = OnChangePassword;

  const factory AuthEvent.login(BuildContext context) = OnLogin;
  const factory AuthEvent.signUp(BuildContext context) = OnSignUp;

  const factory AuthEvent.signInWithGoogle() = OnSignInGoogle;
  const factory AuthEvent.signInWithFacebook() = OnSignInFacebook;
  const factory AuthEvent.signInWithApple() = OnSignInApple;

  const factory AuthEvent.signUpWithGoogle() = OnSignUpGoogle;
  const factory AuthEvent.signUpWithFacebook() = OnSignUpFacebook;
  const factory AuthEvent.signUpWithApple() = OnSignUpApple;

  const factory AuthEvent.navigate(PageCommand pageCommand) = OnNavigate;
  const factory AuthEvent.clearPageCommand() = OnClearPageCommand;
  const factory AuthEvent.openSheet(SheetType sheetType) = OnOpenSheet;
  const factory AuthEvent.forgotPassword() = OnForgotPassword;
}

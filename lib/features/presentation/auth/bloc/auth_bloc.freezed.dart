// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// @nodoc


class OnInitData implements AuthEvent {
  const OnInitData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnInitData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.init()';
}


}




/// @nodoc


class OnToggleRememberMe implements AuthEvent {
  const OnToggleRememberMe(this.value);
  

 final  bool value;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnToggleRememberMeCopyWith<OnToggleRememberMe> get copyWith => _$OnToggleRememberMeCopyWithImpl<OnToggleRememberMe>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnToggleRememberMe&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'AuthEvent.toggleRememberMe(value: $value)';
}


}

/// @nodoc
abstract mixin class $OnToggleRememberMeCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $OnToggleRememberMeCopyWith(OnToggleRememberMe value, $Res Function(OnToggleRememberMe) _then) = _$OnToggleRememberMeCopyWithImpl;
@useResult
$Res call({
 bool value
});




}
/// @nodoc
class _$OnToggleRememberMeCopyWithImpl<$Res>
    implements $OnToggleRememberMeCopyWith<$Res> {
  _$OnToggleRememberMeCopyWithImpl(this._self, this._then);

  final OnToggleRememberMe _self;
  final $Res Function(OnToggleRememberMe) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(OnToggleRememberMe(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class OnTogglePasswordVisibility implements AuthEvent {
  const OnTogglePasswordVisibility(this.value);
  

 final  bool value;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnTogglePasswordVisibilityCopyWith<OnTogglePasswordVisibility> get copyWith => _$OnTogglePasswordVisibilityCopyWithImpl<OnTogglePasswordVisibility>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnTogglePasswordVisibility&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'AuthEvent.togglePasswordVisibility(value: $value)';
}


}

/// @nodoc
abstract mixin class $OnTogglePasswordVisibilityCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $OnTogglePasswordVisibilityCopyWith(OnTogglePasswordVisibility value, $Res Function(OnTogglePasswordVisibility) _then) = _$OnTogglePasswordVisibilityCopyWithImpl;
@useResult
$Res call({
 bool value
});




}
/// @nodoc
class _$OnTogglePasswordVisibilityCopyWithImpl<$Res>
    implements $OnTogglePasswordVisibilityCopyWith<$Res> {
  _$OnTogglePasswordVisibilityCopyWithImpl(this._self, this._then);

  final OnTogglePasswordVisibility _self;
  final $Res Function(OnTogglePasswordVisibility) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(OnTogglePasswordVisibility(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class OnChangeEmail implements AuthEvent {
  const OnChangeEmail(this.email);
  

 final  String email;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnChangeEmailCopyWith<OnChangeEmail> get copyWith => _$OnChangeEmailCopyWithImpl<OnChangeEmail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnChangeEmail&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'AuthEvent.changeEmail(email: $email)';
}


}

/// @nodoc
abstract mixin class $OnChangeEmailCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $OnChangeEmailCopyWith(OnChangeEmail value, $Res Function(OnChangeEmail) _then) = _$OnChangeEmailCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$OnChangeEmailCopyWithImpl<$Res>
    implements $OnChangeEmailCopyWith<$Res> {
  _$OnChangeEmailCopyWithImpl(this._self, this._then);

  final OnChangeEmail _self;
  final $Res Function(OnChangeEmail) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(OnChangeEmail(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OnChangePassword implements AuthEvent {
  const OnChangePassword(this.password);
  

 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnChangePasswordCopyWith<OnChangePassword> get copyWith => _$OnChangePasswordCopyWithImpl<OnChangePassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnChangePassword&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,password);

@override
String toString() {
  return 'AuthEvent.changePassword(password: $password)';
}


}

/// @nodoc
abstract mixin class $OnChangePasswordCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $OnChangePasswordCopyWith(OnChangePassword value, $Res Function(OnChangePassword) _then) = _$OnChangePasswordCopyWithImpl;
@useResult
$Res call({
 String password
});




}
/// @nodoc
class _$OnChangePasswordCopyWithImpl<$Res>
    implements $OnChangePasswordCopyWith<$Res> {
  _$OnChangePasswordCopyWithImpl(this._self, this._then);

  final OnChangePassword _self;
  final $Res Function(OnChangePassword) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(OnChangePassword(
null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OnLogin implements AuthEvent {
  const OnLogin(this.context);
  

 final  BuildContext context;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnLoginCopyWith<OnLogin> get copyWith => _$OnLoginCopyWithImpl<OnLogin>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnLogin&&(identical(other.context, context) || other.context == context));
}


@override
int get hashCode => Object.hash(runtimeType,context);

@override
String toString() {
  return 'AuthEvent.login(context: $context)';
}


}

/// @nodoc
abstract mixin class $OnLoginCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $OnLoginCopyWith(OnLogin value, $Res Function(OnLogin) _then) = _$OnLoginCopyWithImpl;
@useResult
$Res call({
 BuildContext context
});




}
/// @nodoc
class _$OnLoginCopyWithImpl<$Res>
    implements $OnLoginCopyWith<$Res> {
  _$OnLoginCopyWithImpl(this._self, this._then);

  final OnLogin _self;
  final $Res Function(OnLogin) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? context = null,}) {
  return _then(OnLogin(
null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as BuildContext,
  ));
}


}

/// @nodoc


class OnSignUp implements AuthEvent {
  const OnSignUp(this.context);
  

 final  BuildContext context;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnSignUpCopyWith<OnSignUp> get copyWith => _$OnSignUpCopyWithImpl<OnSignUp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnSignUp&&(identical(other.context, context) || other.context == context));
}


@override
int get hashCode => Object.hash(runtimeType,context);

@override
String toString() {
  return 'AuthEvent.signUp(context: $context)';
}


}

/// @nodoc
abstract mixin class $OnSignUpCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $OnSignUpCopyWith(OnSignUp value, $Res Function(OnSignUp) _then) = _$OnSignUpCopyWithImpl;
@useResult
$Res call({
 BuildContext context
});




}
/// @nodoc
class _$OnSignUpCopyWithImpl<$Res>
    implements $OnSignUpCopyWith<$Res> {
  _$OnSignUpCopyWithImpl(this._self, this._then);

  final OnSignUp _self;
  final $Res Function(OnSignUp) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? context = null,}) {
  return _then(OnSignUp(
null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as BuildContext,
  ));
}


}

/// @nodoc


class OnSignInGoogle implements AuthEvent {
  const OnSignInGoogle();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnSignInGoogle);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.signInWithGoogle()';
}


}




/// @nodoc


class OnSignInFacebook implements AuthEvent {
  const OnSignInFacebook();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnSignInFacebook);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.signInWithFacebook()';
}


}




/// @nodoc


class OnSignInApple implements AuthEvent {
  const OnSignInApple();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnSignInApple);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.signInWithApple()';
}


}




/// @nodoc


class OnSignUpGoogle implements AuthEvent {
  const OnSignUpGoogle();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnSignUpGoogle);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.signUpWithGoogle()';
}


}




/// @nodoc


class OnSignUpFacebook implements AuthEvent {
  const OnSignUpFacebook();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnSignUpFacebook);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.signUpWithFacebook()';
}


}




/// @nodoc


class OnSignUpApple implements AuthEvent {
  const OnSignUpApple();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnSignUpApple);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.signUpWithApple()';
}


}




/// @nodoc


class OnNavigate implements AuthEvent {
  const OnNavigate(this.pageCommand);
  

 final  PageCommand pageCommand;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnNavigateCopyWith<OnNavigate> get copyWith => _$OnNavigateCopyWithImpl<OnNavigate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnNavigate&&(identical(other.pageCommand, pageCommand) || other.pageCommand == pageCommand));
}


@override
int get hashCode => Object.hash(runtimeType,pageCommand);

@override
String toString() {
  return 'AuthEvent.navigate(pageCommand: $pageCommand)';
}


}

/// @nodoc
abstract mixin class $OnNavigateCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $OnNavigateCopyWith(OnNavigate value, $Res Function(OnNavigate) _then) = _$OnNavigateCopyWithImpl;
@useResult
$Res call({
 PageCommand pageCommand
});




}
/// @nodoc
class _$OnNavigateCopyWithImpl<$Res>
    implements $OnNavigateCopyWith<$Res> {
  _$OnNavigateCopyWithImpl(this._self, this._then);

  final OnNavigate _self;
  final $Res Function(OnNavigate) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? pageCommand = null,}) {
  return _then(OnNavigate(
null == pageCommand ? _self.pageCommand : pageCommand // ignore: cast_nullable_to_non_nullable
as PageCommand,
  ));
}


}

/// @nodoc


class OnClearPageCommand implements AuthEvent {
  const OnClearPageCommand();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnClearPageCommand);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.clearPageCommand()';
}


}




/// @nodoc


class OnOpenSheet implements AuthEvent {
  const OnOpenSheet(this.sheetType);
  

 final  SheetType sheetType;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnOpenSheetCopyWith<OnOpenSheet> get copyWith => _$OnOpenSheetCopyWithImpl<OnOpenSheet>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnOpenSheet&&(identical(other.sheetType, sheetType) || other.sheetType == sheetType));
}


@override
int get hashCode => Object.hash(runtimeType,sheetType);

@override
String toString() {
  return 'AuthEvent.openSheet(sheetType: $sheetType)';
}


}

/// @nodoc
abstract mixin class $OnOpenSheetCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $OnOpenSheetCopyWith(OnOpenSheet value, $Res Function(OnOpenSheet) _then) = _$OnOpenSheetCopyWithImpl;
@useResult
$Res call({
 SheetType sheetType
});




}
/// @nodoc
class _$OnOpenSheetCopyWithImpl<$Res>
    implements $OnOpenSheetCopyWith<$Res> {
  _$OnOpenSheetCopyWithImpl(this._self, this._then);

  final OnOpenSheet _self;
  final $Res Function(OnOpenSheet) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sheetType = null,}) {
  return _then(OnOpenSheet(
null == sheetType ? _self.sheetType : sheetType // ignore: cast_nullable_to_non_nullable
as SheetType,
  ));
}


}

/// @nodoc


class OnForgotPassword implements AuthEvent {
  const OnForgotPassword();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnForgotPassword);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.forgotPassword()';
}


}




/// @nodoc
mixin _$AuthState {

 String get email; String get password; bool get isRememberMe; bool get visibilityOffPassword; bool get isEnable; String? get errEmail; String? get errPassword; PageState get status; PageCommand? get pageCommand; bool get isSheetOpen; SheetType? get sheetType;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<AuthState> get copyWith => _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.isRememberMe, isRememberMe) || other.isRememberMe == isRememberMe)&&(identical(other.visibilityOffPassword, visibilityOffPassword) || other.visibilityOffPassword == visibilityOffPassword)&&(identical(other.isEnable, isEnable) || other.isEnable == isEnable)&&(identical(other.errEmail, errEmail) || other.errEmail == errEmail)&&(identical(other.errPassword, errPassword) || other.errPassword == errPassword)&&(identical(other.status, status) || other.status == status)&&(identical(other.pageCommand, pageCommand) || other.pageCommand == pageCommand)&&(identical(other.isSheetOpen, isSheetOpen) || other.isSheetOpen == isSheetOpen)&&(identical(other.sheetType, sheetType) || other.sheetType == sheetType));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,isRememberMe,visibilityOffPassword,isEnable,errEmail,errPassword,status,pageCommand,isSheetOpen,sheetType);

@override
String toString() {
  return 'AuthState(email: $email, password: $password, isRememberMe: $isRememberMe, visibilityOffPassword: $visibilityOffPassword, isEnable: $isEnable, errEmail: $errEmail, errPassword: $errPassword, status: $status, pageCommand: $pageCommand, isSheetOpen: $isSheetOpen, sheetType: $sheetType)';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res>  {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 String email, String password, bool isRememberMe, bool visibilityOffPassword, bool isEnable, String? errEmail, String? errPassword, PageState status, PageCommand? pageCommand, bool isSheetOpen, SheetType? sheetType
});




}
/// @nodoc
class _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? isRememberMe = null,Object? visibilityOffPassword = null,Object? isEnable = null,Object? errEmail = freezed,Object? errPassword = freezed,Object? status = null,Object? pageCommand = freezed,Object? isSheetOpen = null,Object? sheetType = freezed,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,isRememberMe: null == isRememberMe ? _self.isRememberMe : isRememberMe // ignore: cast_nullable_to_non_nullable
as bool,visibilityOffPassword: null == visibilityOffPassword ? _self.visibilityOffPassword : visibilityOffPassword // ignore: cast_nullable_to_non_nullable
as bool,isEnable: null == isEnable ? _self.isEnable : isEnable // ignore: cast_nullable_to_non_nullable
as bool,errEmail: freezed == errEmail ? _self.errEmail : errEmail // ignore: cast_nullable_to_non_nullable
as String?,errPassword: freezed == errPassword ? _self.errPassword : errPassword // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PageState,pageCommand: freezed == pageCommand ? _self.pageCommand : pageCommand // ignore: cast_nullable_to_non_nullable
as PageCommand?,isSheetOpen: null == isSheetOpen ? _self.isSheetOpen : isSheetOpen // ignore: cast_nullable_to_non_nullable
as bool,sheetType: freezed == sheetType ? _self.sheetType : sheetType // ignore: cast_nullable_to_non_nullable
as SheetType?,
  ));
}

}


/// @nodoc


class _AuthState implements AuthState {
  const _AuthState({this.email = '', this.password = '', this.isRememberMe = false, this.visibilityOffPassword = false, this.isEnable = false, this.errEmail, this.errPassword, this.status = PageState.init, this.pageCommand, this.isSheetOpen = false, this.sheetType});
  

@override@JsonKey() final  String email;
@override@JsonKey() final  String password;
@override@JsonKey() final  bool isRememberMe;
@override@JsonKey() final  bool visibilityOffPassword;
@override@JsonKey() final  bool isEnable;
@override final  String? errEmail;
@override final  String? errPassword;
@override@JsonKey() final  PageState status;
@override final  PageCommand? pageCommand;
@override@JsonKey() final  bool isSheetOpen;
@override final  SheetType? sheetType;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthStateCopyWith<_AuthState> get copyWith => __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthState&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.isRememberMe, isRememberMe) || other.isRememberMe == isRememberMe)&&(identical(other.visibilityOffPassword, visibilityOffPassword) || other.visibilityOffPassword == visibilityOffPassword)&&(identical(other.isEnable, isEnable) || other.isEnable == isEnable)&&(identical(other.errEmail, errEmail) || other.errEmail == errEmail)&&(identical(other.errPassword, errPassword) || other.errPassword == errPassword)&&(identical(other.status, status) || other.status == status)&&(identical(other.pageCommand, pageCommand) || other.pageCommand == pageCommand)&&(identical(other.isSheetOpen, isSheetOpen) || other.isSheetOpen == isSheetOpen)&&(identical(other.sheetType, sheetType) || other.sheetType == sheetType));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,isRememberMe,visibilityOffPassword,isEnable,errEmail,errPassword,status,pageCommand,isSheetOpen,sheetType);

@override
String toString() {
  return 'AuthState(email: $email, password: $password, isRememberMe: $isRememberMe, visibilityOffPassword: $visibilityOffPassword, isEnable: $isEnable, errEmail: $errEmail, errPassword: $errPassword, status: $status, pageCommand: $pageCommand, isSheetOpen: $isSheetOpen, sheetType: $sheetType)';
}


}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(_AuthState value, $Res Function(_AuthState) _then) = __$AuthStateCopyWithImpl;
@override @useResult
$Res call({
 String email, String password, bool isRememberMe, bool visibilityOffPassword, bool isEnable, String? errEmail, String? errPassword, PageState status, PageCommand? pageCommand, bool isSheetOpen, SheetType? sheetType
});




}
/// @nodoc
class __$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(this._self, this._then);

  final _AuthState _self;
  final $Res Function(_AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? isRememberMe = null,Object? visibilityOffPassword = null,Object? isEnable = null,Object? errEmail = freezed,Object? errPassword = freezed,Object? status = null,Object? pageCommand = freezed,Object? isSheetOpen = null,Object? sheetType = freezed,}) {
  return _then(_AuthState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,isRememberMe: null == isRememberMe ? _self.isRememberMe : isRememberMe // ignore: cast_nullable_to_non_nullable
as bool,visibilityOffPassword: null == visibilityOffPassword ? _self.visibilityOffPassword : visibilityOffPassword // ignore: cast_nullable_to_non_nullable
as bool,isEnable: null == isEnable ? _self.isEnable : isEnable // ignore: cast_nullable_to_non_nullable
as bool,errEmail: freezed == errEmail ? _self.errEmail : errEmail // ignore: cast_nullable_to_non_nullable
as String?,errPassword: freezed == errPassword ? _self.errPassword : errPassword // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PageState,pageCommand: freezed == pageCommand ? _self.pageCommand : pageCommand // ignore: cast_nullable_to_non_nullable
as PageCommand?,isSheetOpen: null == isSheetOpen ? _self.isSheetOpen : isSheetOpen // ignore: cast_nullable_to_non_nullable
as bool,sheetType: freezed == sheetType ? _self.sheetType : sheetType // ignore: cast_nullable_to_non_nullable
as SheetType?,
  ));
}


}

// dart format on

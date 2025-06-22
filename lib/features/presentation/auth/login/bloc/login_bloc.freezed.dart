// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent()';
}


}

/// @nodoc
class $LoginEventCopyWith<$Res>  {
$LoginEventCopyWith(LoginEvent _, $Res Function(LoginEvent) __);
}


/// @nodoc


class OnInitData implements LoginEvent {
  const OnInitData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnInitData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.onInitData()';
}


}




/// @nodoc


class OnChangePassword implements LoginEvent {
  const OnChangePassword(this.value);
  

 final  String value;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnChangePasswordCopyWith<OnChangePassword> get copyWith => _$OnChangePasswordCopyWithImpl<OnChangePassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnChangePassword&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'LoginEvent.onChangePassword(value: $value)';
}


}

/// @nodoc
abstract mixin class $OnChangePasswordCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $OnChangePasswordCopyWith(OnChangePassword value, $Res Function(OnChangePassword) _then) = _$OnChangePasswordCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$OnChangePasswordCopyWithImpl<$Res>
    implements $OnChangePasswordCopyWith<$Res> {
  _$OnChangePasswordCopyWithImpl(this._self, this._then);

  final OnChangePassword _self;
  final $Res Function(OnChangePassword) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(OnChangePassword(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OnChangeEmail implements LoginEvent {
  const OnChangeEmail(this.value);
  

 final  String value;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnChangeEmailCopyWith<OnChangeEmail> get copyWith => _$OnChangeEmailCopyWithImpl<OnChangeEmail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnChangeEmail&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'LoginEvent.onChangeEmail(value: $value)';
}


}

/// @nodoc
abstract mixin class $OnChangeEmailCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $OnChangeEmailCopyWith(OnChangeEmail value, $Res Function(OnChangeEmail) _then) = _$OnChangeEmailCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$OnChangeEmailCopyWithImpl<$Res>
    implements $OnChangeEmailCopyWith<$Res> {
  _$OnChangeEmailCopyWithImpl(this._self, this._then);

  final OnChangeEmail _self;
  final $Res Function(OnChangeEmail) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(OnChangeEmail(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OnSelectedRemember implements LoginEvent {
  const OnSelectedRemember(this.value);
  

 final  bool value;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnSelectedRememberCopyWith<OnSelectedRemember> get copyWith => _$OnSelectedRememberCopyWithImpl<OnSelectedRemember>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnSelectedRemember&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'LoginEvent.onSelectedRemember(value: $value)';
}


}

/// @nodoc
abstract mixin class $OnSelectedRememberCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $OnSelectedRememberCopyWith(OnSelectedRemember value, $Res Function(OnSelectedRemember) _then) = _$OnSelectedRememberCopyWithImpl;
@useResult
$Res call({
 bool value
});




}
/// @nodoc
class _$OnSelectedRememberCopyWithImpl<$Res>
    implements $OnSelectedRememberCopyWith<$Res> {
  _$OnSelectedRememberCopyWithImpl(this._self, this._then);

  final OnSelectedRemember _self;
  final $Res Function(OnSelectedRemember) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(OnSelectedRemember(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class OnVisibilityPassword implements LoginEvent {
  const OnVisibilityPassword(this.value);
  

 final  bool value;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnVisibilityPasswordCopyWith<OnVisibilityPassword> get copyWith => _$OnVisibilityPasswordCopyWithImpl<OnVisibilityPassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnVisibilityPassword&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'LoginEvent.onVisibilityPassword(value: $value)';
}


}

/// @nodoc
abstract mixin class $OnVisibilityPasswordCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $OnVisibilityPasswordCopyWith(OnVisibilityPassword value, $Res Function(OnVisibilityPassword) _then) = _$OnVisibilityPasswordCopyWithImpl;
@useResult
$Res call({
 bool value
});




}
/// @nodoc
class _$OnVisibilityPasswordCopyWithImpl<$Res>
    implements $OnVisibilityPasswordCopyWith<$Res> {
  _$OnVisibilityPasswordCopyWithImpl(this._self, this._then);

  final OnVisibilityPassword _self;
  final $Res Function(OnVisibilityPassword) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(OnVisibilityPassword(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class OnNavigate implements LoginEvent {
  const OnNavigate(this.pageCommand);
  

 final  PageCommand pageCommand;

/// Create a copy of LoginEvent
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
  return 'LoginEvent.onNavigate(pageCommand: $pageCommand)';
}


}

/// @nodoc
abstract mixin class $OnNavigateCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
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

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? pageCommand = null,}) {
  return _then(OnNavigate(
null == pageCommand ? _self.pageCommand : pageCommand // ignore: cast_nullable_to_non_nullable
as PageCommand,
  ));
}


}

/// @nodoc


class OnLogin implements LoginEvent {
  const OnLogin(this.ctx);
  

 final  BuildContext ctx;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnLoginCopyWith<OnLogin> get copyWith => _$OnLoginCopyWithImpl<OnLogin>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnLogin&&(identical(other.ctx, ctx) || other.ctx == ctx));
}


@override
int get hashCode => Object.hash(runtimeType,ctx);

@override
String toString() {
  return 'LoginEvent.onLogin(ctx: $ctx)';
}


}

/// @nodoc
abstract mixin class $OnLoginCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $OnLoginCopyWith(OnLogin value, $Res Function(OnLogin) _then) = _$OnLoginCopyWithImpl;
@useResult
$Res call({
 BuildContext ctx
});




}
/// @nodoc
class _$OnLoginCopyWithImpl<$Res>
    implements $OnLoginCopyWith<$Res> {
  _$OnLoginCopyWithImpl(this._self, this._then);

  final OnLogin _self;
  final $Res Function(OnLogin) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ctx = null,}) {
  return _then(OnLogin(
null == ctx ? _self.ctx : ctx // ignore: cast_nullable_to_non_nullable
as BuildContext,
  ));
}


}

/// @nodoc


class OnSignInGoogle implements LoginEvent {
  const OnSignInGoogle();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnSignInGoogle);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.onSignInGoogle()';
}


}




/// @nodoc


class OnSignInFacebook implements LoginEvent {
  const OnSignInFacebook();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnSignInFacebook);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.onSignInFacebook()';
}


}




/// @nodoc


class OnSignInApple implements LoginEvent {
  const OnSignInApple();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnSignInApple);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.onSignInApple()';
}


}




/// @nodoc


class OnForgotPassword implements LoginEvent {
  const OnForgotPassword();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnForgotPassword);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.onForgotPassword()';
}


}




/// @nodoc


class OnClearPage implements LoginEvent {
  const OnClearPage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnClearPage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.onClearPage()';
}


}




/// @nodoc
mixin _$LoginState {

 PageCommand? get pageCommand; PageState get status; bool get isRememberMe; bool get isEnable; bool get visibilityOffPassword; String? get email; String? get password; String? get errEmail; String? get errPassword;
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginStateCopyWith<LoginState> get copyWith => _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState&&(identical(other.pageCommand, pageCommand) || other.pageCommand == pageCommand)&&(identical(other.status, status) || other.status == status)&&(identical(other.isRememberMe, isRememberMe) || other.isRememberMe == isRememberMe)&&(identical(other.isEnable, isEnable) || other.isEnable == isEnable)&&(identical(other.visibilityOffPassword, visibilityOffPassword) || other.visibilityOffPassword == visibilityOffPassword)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.errEmail, errEmail) || other.errEmail == errEmail)&&(identical(other.errPassword, errPassword) || other.errPassword == errPassword));
}


@override
int get hashCode => Object.hash(runtimeType,pageCommand,status,isRememberMe,isEnable,visibilityOffPassword,email,password,errEmail,errPassword);

@override
String toString() {
  return 'LoginState(pageCommand: $pageCommand, status: $status, isRememberMe: $isRememberMe, isEnable: $isEnable, visibilityOffPassword: $visibilityOffPassword, email: $email, password: $password, errEmail: $errEmail, errPassword: $errPassword)';
}


}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res>  {
  factory $LoginStateCopyWith(LoginState value, $Res Function(LoginState) _then) = _$LoginStateCopyWithImpl;
@useResult
$Res call({
 PageCommand? pageCommand, PageState status, bool isRememberMe, bool isEnable, bool visibilityOffPassword, String? email, String? password, String? errEmail, String? errPassword
});




}
/// @nodoc
class _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pageCommand = freezed,Object? status = null,Object? isRememberMe = null,Object? isEnable = null,Object? visibilityOffPassword = null,Object? email = freezed,Object? password = freezed,Object? errEmail = freezed,Object? errPassword = freezed,}) {
  return _then(_self.copyWith(
pageCommand: freezed == pageCommand ? _self.pageCommand : pageCommand // ignore: cast_nullable_to_non_nullable
as PageCommand?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PageState,isRememberMe: null == isRememberMe ? _self.isRememberMe : isRememberMe // ignore: cast_nullable_to_non_nullable
as bool,isEnable: null == isEnable ? _self.isEnable : isEnable // ignore: cast_nullable_to_non_nullable
as bool,visibilityOffPassword: null == visibilityOffPassword ? _self.visibilityOffPassword : visibilityOffPassword // ignore: cast_nullable_to_non_nullable
as bool,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,errEmail: freezed == errEmail ? _self.errEmail : errEmail // ignore: cast_nullable_to_non_nullable
as String?,errPassword: freezed == errPassword ? _self.errPassword : errPassword // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _LoginState extends LoginState {
  const _LoginState({this.pageCommand, this.status = PageState.init, this.isRememberMe = false, this.isEnable = false, this.visibilityOffPassword = true, this.email, this.password, this.errEmail, this.errPassword}): super._();
  

@override final  PageCommand? pageCommand;
@override@JsonKey() final  PageState status;
@override@JsonKey() final  bool isRememberMe;
@override@JsonKey() final  bool isEnable;
@override@JsonKey() final  bool visibilityOffPassword;
@override final  String? email;
@override final  String? password;
@override final  String? errEmail;
@override final  String? errPassword;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginStateCopyWith<_LoginState> get copyWith => __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginState&&(identical(other.pageCommand, pageCommand) || other.pageCommand == pageCommand)&&(identical(other.status, status) || other.status == status)&&(identical(other.isRememberMe, isRememberMe) || other.isRememberMe == isRememberMe)&&(identical(other.isEnable, isEnable) || other.isEnable == isEnable)&&(identical(other.visibilityOffPassword, visibilityOffPassword) || other.visibilityOffPassword == visibilityOffPassword)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.errEmail, errEmail) || other.errEmail == errEmail)&&(identical(other.errPassword, errPassword) || other.errPassword == errPassword));
}


@override
int get hashCode => Object.hash(runtimeType,pageCommand,status,isRememberMe,isEnable,visibilityOffPassword,email,password,errEmail,errPassword);

@override
String toString() {
  return 'LoginState(pageCommand: $pageCommand, status: $status, isRememberMe: $isRememberMe, isEnable: $isEnable, visibilityOffPassword: $visibilityOffPassword, email: $email, password: $password, errEmail: $errEmail, errPassword: $errPassword)';
}


}

/// @nodoc
abstract mixin class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(_LoginState value, $Res Function(_LoginState) _then) = __$LoginStateCopyWithImpl;
@override @useResult
$Res call({
 PageCommand? pageCommand, PageState status, bool isRememberMe, bool isEnable, bool visibilityOffPassword, String? email, String? password, String? errEmail, String? errPassword
});




}
/// @nodoc
class __$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(this._self, this._then);

  final _LoginState _self;
  final $Res Function(_LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pageCommand = freezed,Object? status = null,Object? isRememberMe = null,Object? isEnable = null,Object? visibilityOffPassword = null,Object? email = freezed,Object? password = freezed,Object? errEmail = freezed,Object? errPassword = freezed,}) {
  return _then(_LoginState(
pageCommand: freezed == pageCommand ? _self.pageCommand : pageCommand // ignore: cast_nullable_to_non_nullable
as PageCommand?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PageState,isRememberMe: null == isRememberMe ? _self.isRememberMe : isRememberMe // ignore: cast_nullable_to_non_nullable
as bool,isEnable: null == isEnable ? _self.isEnable : isEnable // ignore: cast_nullable_to_non_nullable
as bool,visibilityOffPassword: null == visibilityOffPassword ? _self.visibilityOffPassword : visibilityOffPassword // ignore: cast_nullable_to_non_nullable
as bool,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,errEmail: freezed == errEmail ? _self.errEmail : errEmail // ignore: cast_nullable_to_non_nullable
as String?,errPassword: freezed == errPassword ? _self.errPassword : errPassword // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

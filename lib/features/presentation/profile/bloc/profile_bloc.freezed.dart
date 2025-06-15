// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent()';
}


}

/// @nodoc
class $ProfileEventCopyWith<$Res>  {
$ProfileEventCopyWith(ProfileEvent _, $Res Function(ProfileEvent) __);
}


/// @nodoc


class _OnInit implements ProfileEvent {
  const _OnInit();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnInit);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.onInit()';
}


}




/// @nodoc


class _OnChangeDarkMode implements ProfileEvent {
  const _OnChangeDarkMode();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnChangeDarkMode);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.onChangeDarkMode()';
}


}




/// @nodoc


class _OnChangeLanguage implements ProfileEvent {
  const _OnChangeLanguage(this.langName);
  

 final  String langName;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnChangeLanguageCopyWith<_OnChangeLanguage> get copyWith => __$OnChangeLanguageCopyWithImpl<_OnChangeLanguage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnChangeLanguage&&(identical(other.langName, langName) || other.langName == langName));
}


@override
int get hashCode => Object.hash(runtimeType,langName);

@override
String toString() {
  return 'ProfileEvent.onChangeLanguage(langName: $langName)';
}


}

/// @nodoc
abstract mixin class _$OnChangeLanguageCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$OnChangeLanguageCopyWith(_OnChangeLanguage value, $Res Function(_OnChangeLanguage) _then) = __$OnChangeLanguageCopyWithImpl;
@useResult
$Res call({
 String langName
});




}
/// @nodoc
class __$OnChangeLanguageCopyWithImpl<$Res>
    implements _$OnChangeLanguageCopyWith<$Res> {
  __$OnChangeLanguageCopyWithImpl(this._self, this._then);

  final _OnChangeLanguage _self;
  final $Res Function(_OnChangeLanguage) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? langName = null,}) {
  return _then(_OnChangeLanguage(
null == langName ? _self.langName : langName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ProfileState {

 bool get isDarkMode; String? get languageName; PageCommand? get pageCommand;
/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileStateCopyWith<ProfileState> get copyWith => _$ProfileStateCopyWithImpl<ProfileState>(this as ProfileState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileState&&(identical(other.isDarkMode, isDarkMode) || other.isDarkMode == isDarkMode)&&(identical(other.languageName, languageName) || other.languageName == languageName)&&(identical(other.pageCommand, pageCommand) || other.pageCommand == pageCommand));
}


@override
int get hashCode => Object.hash(runtimeType,isDarkMode,languageName,pageCommand);

@override
String toString() {
  return 'ProfileState(isDarkMode: $isDarkMode, languageName: $languageName, pageCommand: $pageCommand)';
}


}

/// @nodoc
abstract mixin class $ProfileStateCopyWith<$Res>  {
  factory $ProfileStateCopyWith(ProfileState value, $Res Function(ProfileState) _then) = _$ProfileStateCopyWithImpl;
@useResult
$Res call({
 bool isDarkMode, String? languageName, PageCommand? pageCommand
});




}
/// @nodoc
class _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._self, this._then);

  final ProfileState _self;
  final $Res Function(ProfileState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isDarkMode = null,Object? languageName = freezed,Object? pageCommand = freezed,}) {
  return _then(_self.copyWith(
isDarkMode: null == isDarkMode ? _self.isDarkMode : isDarkMode // ignore: cast_nullable_to_non_nullable
as bool,languageName: freezed == languageName ? _self.languageName : languageName // ignore: cast_nullable_to_non_nullable
as String?,pageCommand: freezed == pageCommand ? _self.pageCommand : pageCommand // ignore: cast_nullable_to_non_nullable
as PageCommand?,
  ));
}

}


/// @nodoc


class _ProfileState implements ProfileState {
  const _ProfileState({this.isDarkMode = false, this.languageName, this.pageCommand});
  

@override@JsonKey() final  bool isDarkMode;
@override final  String? languageName;
@override final  PageCommand? pageCommand;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileStateCopyWith<_ProfileState> get copyWith => __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileState&&(identical(other.isDarkMode, isDarkMode) || other.isDarkMode == isDarkMode)&&(identical(other.languageName, languageName) || other.languageName == languageName)&&(identical(other.pageCommand, pageCommand) || other.pageCommand == pageCommand));
}


@override
int get hashCode => Object.hash(runtimeType,isDarkMode,languageName,pageCommand);

@override
String toString() {
  return 'ProfileState(isDarkMode: $isDarkMode, languageName: $languageName, pageCommand: $pageCommand)';
}


}

/// @nodoc
abstract mixin class _$ProfileStateCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(_ProfileState value, $Res Function(_ProfileState) _then) = __$ProfileStateCopyWithImpl;
@override @useResult
$Res call({
 bool isDarkMode, String? languageName, PageCommand? pageCommand
});




}
/// @nodoc
class __$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(this._self, this._then);

  final _ProfileState _self;
  final $Res Function(_ProfileState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isDarkMode = null,Object? languageName = freezed,Object? pageCommand = freezed,}) {
  return _then(_ProfileState(
isDarkMode: null == isDarkMode ? _self.isDarkMode : isDarkMode // ignore: cast_nullable_to_non_nullable
as bool,languageName: freezed == languageName ? _self.languageName : languageName // ignore: cast_nullable_to_non_nullable
as String?,pageCommand: freezed == pageCommand ? _self.pageCommand : pageCommand // ignore: cast_nullable_to_non_nullable
as PageCommand?,
  ));
}


}

// dart format on

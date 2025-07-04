// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SplashEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashEvent()';
}


}

/// @nodoc
class $SplashEventCopyWith<$Res>  {
$SplashEventCopyWith(SplashEvent _, $Res Function(SplashEvent) __);
}


/// @nodoc


class _Started implements SplashEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashEvent.started()';
}


}




/// @nodoc


class _ShowButton implements SplashEvent {
  const _ShowButton();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShowButton);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashEvent.showButton()';
}


}




/// @nodoc
mixin _$SplashState {

 bool get showButton; PageCommand? get pageCmd;
/// Create a copy of SplashState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SplashStateCopyWith<SplashState> get copyWith => _$SplashStateCopyWithImpl<SplashState>(this as SplashState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashState&&(identical(other.showButton, showButton) || other.showButton == showButton)&&(identical(other.pageCmd, pageCmd) || other.pageCmd == pageCmd));
}


@override
int get hashCode => Object.hash(runtimeType,showButton,pageCmd);

@override
String toString() {
  return 'SplashState(showButton: $showButton, pageCmd: $pageCmd)';
}


}

/// @nodoc
abstract mixin class $SplashStateCopyWith<$Res>  {
  factory $SplashStateCopyWith(SplashState value, $Res Function(SplashState) _then) = _$SplashStateCopyWithImpl;
@useResult
$Res call({
 bool showButton, PageCommand? pageCmd
});




}
/// @nodoc
class _$SplashStateCopyWithImpl<$Res>
    implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._self, this._then);

  final SplashState _self;
  final $Res Function(SplashState) _then;

/// Create a copy of SplashState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? showButton = null,Object? pageCmd = freezed,}) {
  return _then(_self.copyWith(
showButton: null == showButton ? _self.showButton : showButton // ignore: cast_nullable_to_non_nullable
as bool,pageCmd: freezed == pageCmd ? _self.pageCmd : pageCmd // ignore: cast_nullable_to_non_nullable
as PageCommand?,
  ));
}

}


/// @nodoc


class _SplashState implements SplashState {
  const _SplashState({this.showButton = false, this.pageCmd});
  

@override@JsonKey() final  bool showButton;
@override final  PageCommand? pageCmd;

/// Create a copy of SplashState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SplashStateCopyWith<_SplashState> get copyWith => __$SplashStateCopyWithImpl<_SplashState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SplashState&&(identical(other.showButton, showButton) || other.showButton == showButton)&&(identical(other.pageCmd, pageCmd) || other.pageCmd == pageCmd));
}


@override
int get hashCode => Object.hash(runtimeType,showButton,pageCmd);

@override
String toString() {
  return 'SplashState(showButton: $showButton, pageCmd: $pageCmd)';
}


}

/// @nodoc
abstract mixin class _$SplashStateCopyWith<$Res> implements $SplashStateCopyWith<$Res> {
  factory _$SplashStateCopyWith(_SplashState value, $Res Function(_SplashState) _then) = __$SplashStateCopyWithImpl;
@override @useResult
$Res call({
 bool showButton, PageCommand? pageCmd
});




}
/// @nodoc
class __$SplashStateCopyWithImpl<$Res>
    implements _$SplashStateCopyWith<$Res> {
  __$SplashStateCopyWithImpl(this._self, this._then);

  final _SplashState _self;
  final $Res Function(_SplashState) _then;

/// Create a copy of SplashState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? showButton = null,Object? pageCmd = freezed,}) {
  return _then(_SplashState(
showButton: null == showButton ? _self.showButton : showButton // ignore: cast_nullable_to_non_nullable
as bool,pageCmd: freezed == pageCmd ? _self.pageCmd : pageCmd // ignore: cast_nullable_to_non_nullable
as PageCommand?,
  ));
}


}

// dart format on

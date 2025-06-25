// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'play_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PlayEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlayEvent()';
}


}

/// @nodoc
class $PlayEventCopyWith<$Res>  {
$PlayEventCopyWith(PlayEvent _, $Res Function(PlayEvent) __);
}


/// @nodoc


class _PlayPause implements PlayEvent {
  const _PlayPause();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlayPause);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlayEvent.playPause()';
}


}




/// @nodoc


class _Next implements PlayEvent {
  const _Next();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Next);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlayEvent.next()';
}


}




/// @nodoc


class _Previous implements PlayEvent {
  const _Previous();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Previous);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlayEvent.previous()';
}


}




/// @nodoc


class _Seek implements PlayEvent {
  const _Seek(this.position);
  

 final  double position;

/// Create a copy of PlayEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SeekCopyWith<_Seek> get copyWith => __$SeekCopyWithImpl<_Seek>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Seek&&(identical(other.position, position) || other.position == position));
}


@override
int get hashCode => Object.hash(runtimeType,position);

@override
String toString() {
  return 'PlayEvent.seek(position: $position)';
}


}

/// @nodoc
abstract mixin class _$SeekCopyWith<$Res> implements $PlayEventCopyWith<$Res> {
  factory _$SeekCopyWith(_Seek value, $Res Function(_Seek) _then) = __$SeekCopyWithImpl;
@useResult
$Res call({
 double position
});




}
/// @nodoc
class __$SeekCopyWithImpl<$Res>
    implements _$SeekCopyWith<$Res> {
  __$SeekCopyWithImpl(this._self, this._then);

  final _Seek _self;
  final $Res Function(_Seek) _then;

/// Create a copy of PlayEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? position = null,}) {
  return _then(_Seek(
null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class _ToggleShuffle implements PlayEvent {
  const _ToggleShuffle();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToggleShuffle);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlayEvent.toggleShuffle()';
}


}




/// @nodoc


class _ToggleRepeat implements PlayEvent {
  const _ToggleRepeat();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToggleRepeat);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlayEvent.toggleRepeat()';
}


}




/// @nodoc


class _ToggleFavorite implements PlayEvent {
  const _ToggleFavorite();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToggleFavorite);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlayEvent.toggleFavorite()';
}


}




/// @nodoc


class _LoadSong implements PlayEvent {
  const _LoadSong({required this.title, required this.artist, required this.imagePath, required this.duration});
  

 final  String title;
 final  String artist;
 final  String imagePath;
 final  double duration;

/// Create a copy of PlayEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadSongCopyWith<_LoadSong> get copyWith => __$LoadSongCopyWithImpl<_LoadSong>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadSong&&(identical(other.title, title) || other.title == title)&&(identical(other.artist, artist) || other.artist == artist)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.duration, duration) || other.duration == duration));
}


@override
int get hashCode => Object.hash(runtimeType,title,artist,imagePath,duration);

@override
String toString() {
  return 'PlayEvent.loadSong(title: $title, artist: $artist, imagePath: $imagePath, duration: $duration)';
}


}

/// @nodoc
abstract mixin class _$LoadSongCopyWith<$Res> implements $PlayEventCopyWith<$Res> {
  factory _$LoadSongCopyWith(_LoadSong value, $Res Function(_LoadSong) _then) = __$LoadSongCopyWithImpl;
@useResult
$Res call({
 String title, String artist, String imagePath, double duration
});




}
/// @nodoc
class __$LoadSongCopyWithImpl<$Res>
    implements _$LoadSongCopyWith<$Res> {
  __$LoadSongCopyWithImpl(this._self, this._then);

  final _LoadSong _self;
  final $Res Function(_LoadSong) _then;

/// Create a copy of PlayEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,Object? artist = null,Object? imagePath = null,Object? duration = null,}) {
  return _then(_LoadSong(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,artist: null == artist ? _self.artist : artist // ignore: cast_nullable_to_non_nullable
as String,imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class _UpdatePosition implements PlayEvent {
  const _UpdatePosition(this.position);
  

 final  double position;

/// Create a copy of PlayEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatePositionCopyWith<_UpdatePosition> get copyWith => __$UpdatePositionCopyWithImpl<_UpdatePosition>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatePosition&&(identical(other.position, position) || other.position == position));
}


@override
int get hashCode => Object.hash(runtimeType,position);

@override
String toString() {
  return 'PlayEvent.updatePosition(position: $position)';
}


}

/// @nodoc
abstract mixin class _$UpdatePositionCopyWith<$Res> implements $PlayEventCopyWith<$Res> {
  factory _$UpdatePositionCopyWith(_UpdatePosition value, $Res Function(_UpdatePosition) _then) = __$UpdatePositionCopyWithImpl;
@useResult
$Res call({
 double position
});




}
/// @nodoc
class __$UpdatePositionCopyWithImpl<$Res>
    implements _$UpdatePositionCopyWith<$Res> {
  __$UpdatePositionCopyWithImpl(this._self, this._then);

  final _UpdatePosition _self;
  final $Res Function(_UpdatePosition) _then;

/// Create a copy of PlayEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? position = null,}) {
  return _then(_UpdatePosition(
null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$PlayState {

 bool get isPlaying; bool get isLoading; double get currentPosition; double get totalDuration; bool get isShuffle; bool get isRepeat; bool get isFavorite; String? get currentSong; String? get currentArtist; String? get currentImage; String? get error;
/// Create a copy of PlayState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayStateCopyWith<PlayState> get copyWith => _$PlayStateCopyWithImpl<PlayState>(this as PlayState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayState&&(identical(other.isPlaying, isPlaying) || other.isPlaying == isPlaying)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.currentPosition, currentPosition) || other.currentPosition == currentPosition)&&(identical(other.totalDuration, totalDuration) || other.totalDuration == totalDuration)&&(identical(other.isShuffle, isShuffle) || other.isShuffle == isShuffle)&&(identical(other.isRepeat, isRepeat) || other.isRepeat == isRepeat)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.currentSong, currentSong) || other.currentSong == currentSong)&&(identical(other.currentArtist, currentArtist) || other.currentArtist == currentArtist)&&(identical(other.currentImage, currentImage) || other.currentImage == currentImage)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isPlaying,isLoading,currentPosition,totalDuration,isShuffle,isRepeat,isFavorite,currentSong,currentArtist,currentImage,error);

@override
String toString() {
  return 'PlayState(isPlaying: $isPlaying, isLoading: $isLoading, currentPosition: $currentPosition, totalDuration: $totalDuration, isShuffle: $isShuffle, isRepeat: $isRepeat, isFavorite: $isFavorite, currentSong: $currentSong, currentArtist: $currentArtist, currentImage: $currentImage, error: $error)';
}


}

/// @nodoc
abstract mixin class $PlayStateCopyWith<$Res>  {
  factory $PlayStateCopyWith(PlayState value, $Res Function(PlayState) _then) = _$PlayStateCopyWithImpl;
@useResult
$Res call({
 bool isPlaying, bool isLoading, double currentPosition, double totalDuration, bool isShuffle, bool isRepeat, bool isFavorite, String? currentSong, String? currentArtist, String? currentImage, String? error
});




}
/// @nodoc
class _$PlayStateCopyWithImpl<$Res>
    implements $PlayStateCopyWith<$Res> {
  _$PlayStateCopyWithImpl(this._self, this._then);

  final PlayState _self;
  final $Res Function(PlayState) _then;

/// Create a copy of PlayState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isPlaying = null,Object? isLoading = null,Object? currentPosition = null,Object? totalDuration = null,Object? isShuffle = null,Object? isRepeat = null,Object? isFavorite = null,Object? currentSong = freezed,Object? currentArtist = freezed,Object? currentImage = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
isPlaying: null == isPlaying ? _self.isPlaying : isPlaying // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,currentPosition: null == currentPosition ? _self.currentPosition : currentPosition // ignore: cast_nullable_to_non_nullable
as double,totalDuration: null == totalDuration ? _self.totalDuration : totalDuration // ignore: cast_nullable_to_non_nullable
as double,isShuffle: null == isShuffle ? _self.isShuffle : isShuffle // ignore: cast_nullable_to_non_nullable
as bool,isRepeat: null == isRepeat ? _self.isRepeat : isRepeat // ignore: cast_nullable_to_non_nullable
as bool,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,currentSong: freezed == currentSong ? _self.currentSong : currentSong // ignore: cast_nullable_to_non_nullable
as String?,currentArtist: freezed == currentArtist ? _self.currentArtist : currentArtist // ignore: cast_nullable_to_non_nullable
as String?,currentImage: freezed == currentImage ? _self.currentImage : currentImage // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _PlayState implements PlayState {
  const _PlayState({this.isPlaying = false, this.isLoading = false, this.currentPosition = 0.0, this.totalDuration = 1.0, this.isShuffle = false, this.isRepeat = false, this.isFavorite = false, this.currentSong, this.currentArtist, this.currentImage, this.error});
  

@override@JsonKey() final  bool isPlaying;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  double currentPosition;
@override@JsonKey() final  double totalDuration;
@override@JsonKey() final  bool isShuffle;
@override@JsonKey() final  bool isRepeat;
@override@JsonKey() final  bool isFavorite;
@override final  String? currentSong;
@override final  String? currentArtist;
@override final  String? currentImage;
@override final  String? error;

/// Create a copy of PlayState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayStateCopyWith<_PlayState> get copyWith => __$PlayStateCopyWithImpl<_PlayState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlayState&&(identical(other.isPlaying, isPlaying) || other.isPlaying == isPlaying)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.currentPosition, currentPosition) || other.currentPosition == currentPosition)&&(identical(other.totalDuration, totalDuration) || other.totalDuration == totalDuration)&&(identical(other.isShuffle, isShuffle) || other.isShuffle == isShuffle)&&(identical(other.isRepeat, isRepeat) || other.isRepeat == isRepeat)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.currentSong, currentSong) || other.currentSong == currentSong)&&(identical(other.currentArtist, currentArtist) || other.currentArtist == currentArtist)&&(identical(other.currentImage, currentImage) || other.currentImage == currentImage)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isPlaying,isLoading,currentPosition,totalDuration,isShuffle,isRepeat,isFavorite,currentSong,currentArtist,currentImage,error);

@override
String toString() {
  return 'PlayState(isPlaying: $isPlaying, isLoading: $isLoading, currentPosition: $currentPosition, totalDuration: $totalDuration, isShuffle: $isShuffle, isRepeat: $isRepeat, isFavorite: $isFavorite, currentSong: $currentSong, currentArtist: $currentArtist, currentImage: $currentImage, error: $error)';
}


}

/// @nodoc
abstract mixin class _$PlayStateCopyWith<$Res> implements $PlayStateCopyWith<$Res> {
  factory _$PlayStateCopyWith(_PlayState value, $Res Function(_PlayState) _then) = __$PlayStateCopyWithImpl;
@override @useResult
$Res call({
 bool isPlaying, bool isLoading, double currentPosition, double totalDuration, bool isShuffle, bool isRepeat, bool isFavorite, String? currentSong, String? currentArtist, String? currentImage, String? error
});




}
/// @nodoc
class __$PlayStateCopyWithImpl<$Res>
    implements _$PlayStateCopyWith<$Res> {
  __$PlayStateCopyWithImpl(this._self, this._then);

  final _PlayState _self;
  final $Res Function(_PlayState) _then;

/// Create a copy of PlayState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isPlaying = null,Object? isLoading = null,Object? currentPosition = null,Object? totalDuration = null,Object? isShuffle = null,Object? isRepeat = null,Object? isFavorite = null,Object? currentSong = freezed,Object? currentArtist = freezed,Object? currentImage = freezed,Object? error = freezed,}) {
  return _then(_PlayState(
isPlaying: null == isPlaying ? _self.isPlaying : isPlaying // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,currentPosition: null == currentPosition ? _self.currentPosition : currentPosition // ignore: cast_nullable_to_non_nullable
as double,totalDuration: null == totalDuration ? _self.totalDuration : totalDuration // ignore: cast_nullable_to_non_nullable
as double,isShuffle: null == isShuffle ? _self.isShuffle : isShuffle // ignore: cast_nullable_to_non_nullable
as bool,isRepeat: null == isRepeat ? _self.isRepeat : isRepeat // ignore: cast_nullable_to_non_nullable
as bool,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,currentSong: freezed == currentSong ? _self.currentSong : currentSong // ignore: cast_nullable_to_non_nullable
as String?,currentArtist: freezed == currentArtist ? _self.currentArtist : currentArtist // ignore: cast_nullable_to_non_nullable
as String?,currentImage: freezed == currentImage ? _self.currentImage : currentImage // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

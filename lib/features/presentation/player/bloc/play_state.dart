part of 'play_bloc.dart';

@freezed
abstract class PlayState with _$PlayState {
  const factory PlayState({
    @Default(false) bool isPlaying,
    @Default(false) bool isLoading,
    @Default(0.0) double currentPosition,
    @Default(1.0) double totalDuration,
    @Default(false) bool isShuffle,
    @Default(false) bool isRepeat,
    @Default(false) bool isFavorite,
    String? currentSong,
    String? currentArtist,
    String? currentImage,
    String? error,
  }) = _PlayState;
}

part of 'play_bloc.dart';

@freezed
class PlayEvent with _$PlayEvent {
  const factory PlayEvent.playPause() = _PlayPause;
  const factory PlayEvent.next() = _Next;
  const factory PlayEvent.previous() = _Previous;
  const factory PlayEvent.seek(double position) = _Seek;
  const factory PlayEvent.toggleShuffle() = _ToggleShuffle;
  const factory PlayEvent.toggleRepeat() = _ToggleRepeat;
  const factory PlayEvent.toggleFavorite() = _ToggleFavorite;
  const factory PlayEvent.loadSong({
    required String title,
    required String artist,
    required String imagePath,
    required double duration,
  }) = _LoadSong;
  const factory PlayEvent.updatePosition(double position) = _UpdatePosition;
}

import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'play_bloc.freezed.dart';
part 'play_event.dart';
part 'play_state.dart';

class PlayBloc extends Bloc<PlayEvent, PlayState> {
  Timer? _positionTimer;

  PlayBloc() : super(const PlayState()) {
    on<_PlayPause>(_onPlayPause);
    on<_Next>(_onNext);
    on<_Previous>(_onPrevious);
    on<_Seek>(_onSeek);
    on<_ToggleShuffle>(_onToggleShuffle);
    on<_ToggleRepeat>(_onToggleRepeat);
    on<_ToggleFavorite>(_onToggleFavorite);
    on<_LoadSong>(_onLoadSong);
    on<_UpdatePosition>(_onUpdatePosition);
  }

  void _onPlayPause(_PlayPause event, Emitter<PlayState> emit) {
    emit(state.copyWith(isPlaying: !state.isPlaying));

    if (state.isPlaying) {
      _startPositionTimer();
    } else {
      _stopPositionTimer();
    }
  }

  void _onNext(_Next event, Emitter<PlayState> emit) {
    emit(state.copyWith(currentPosition: 0.0, currentSong: "Bài tiếp theo"));
  }

  void _onPrevious(_Previous event, Emitter<PlayState> emit) {
    emit(state.copyWith(currentPosition: 0.0, currentSong: "Bài trước"));
  }

  void _onSeek(_Seek event, Emitter<PlayState> emit) {
    emit(state.copyWith(currentPosition: event.position));
  }

  void _onToggleShuffle(_ToggleShuffle event, Emitter<PlayState> emit) {
    emit(state.copyWith(isShuffle: !state.isShuffle));
  }

  void _onToggleRepeat(_ToggleRepeat event, Emitter<PlayState> emit) {
    emit(state.copyWith(isRepeat: !state.isRepeat));
  }

  void _onToggleFavorite(_ToggleFavorite event, Emitter<PlayState> emit) {
    emit(state.copyWith(isFavorite: !state.isFavorite));
  }

  void _onLoadSong(_LoadSong event, Emitter<PlayState> emit) {
    emit(
      state.copyWith(
        currentSong: event.title,
        currentArtist: event.artist,
        currentImage: event.imagePath,
        totalDuration: event.duration,
        currentPosition: 0.0,
        isPlaying: false,
      ),
    );
  }

  void _onUpdatePosition(_UpdatePosition event, Emitter<PlayState> emit) {
    emit(state.copyWith(currentPosition: event.position));
  }

  void _startPositionTimer() {
    _positionTimer?.cancel();
    _positionTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (state.currentPosition < state.totalDuration) {
        add(PlayEvent.updatePosition(state.currentPosition + 1));
      } else {
        add(PlayEvent.updatePosition(0.0));
        add(const PlayEvent.playPause());
      }
    });
  }

  void _stopPositionTimer() {
    _positionTimer?.cancel();
  }

  @override
  Future<void> close() {
    _positionTimer?.cancel();
    return super.close();
  }
}

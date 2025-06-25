import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sonix/features/presentation/player/widget/action_button.dart';
import 'package:sonix/features/presentation/player/widget/control_button.dart';
import 'package:sonix/features/presentation/player/widget/play_progress.dart';
import 'package:sonix/features/presentation/player/widget/play_time.dart';
import 'package:sonix/features/presentation/player/widget/song_album.dart';
import 'package:sonix/features/presentation/player/widget/song_info.dart';

import 'bloc/play_bloc.dart';

class PlayScreen extends StatelessWidget {
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              PlayBloc()..add(
                const PlayEvent.loadSong(
                  title: 'Nơi này có anh',
                  artist: 'Sơn Tùng M-TP',
                  imagePath: 'assets/images/ok.jpg',
                  duration: 225,
                ),
              ),
      child: const _PlayScreenBody(),
    );
  }
}

class _PlayScreenBody extends StatelessWidget {
  const _PlayScreenBody();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: BlocBuilder<PlayBloc, PlayState>(
        builder: (context, state) {
          return Stack(
            children: [
              Positioned.fill(
                child:
                    state.currentImage != null
                        ? Image.asset(
                          state.currentImage!,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return _buildDefaultBackground();
                          },
                        )
                        : _buildDefaultBackground(),
              ),

              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(color: Colors.black.withValues(alpha: 0.5)),
                ),
              ),

              // Main Content
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SongAlbum(imagePath: state.currentImage),
                    const SizedBox(height: 30),

                    SongInfo(
                      title: state.currentSong,
                      artist: state.currentArtist,
                    ),
                    const SizedBox(height: 30),

                    PlayProgress(
                      position: state.currentPosition,
                      total: state.totalDuration,
                      onSeek:
                          (pos) =>
                              context.read<PlayBloc>().add(PlayEvent.seek(pos)),
                    ),

                    PlayTime(
                      currentPosition: state.currentPosition,
                      totalDuration: state.totalDuration,
                    ),
                    const SizedBox(height: 30),

                    ControlButtons(
                      isPlaying: state.isPlaying,
                      isShuffle: state.isShuffle,
                      isRepeat: state.isRepeat,
                      onPlayPause:
                          () => context.read<PlayBloc>().add(
                            const PlayEvent.playPause(),
                          ),
                      onNext:
                          () => context.read<PlayBloc>().add(
                            const PlayEvent.next(),
                          ),
                      onPrev:
                          () => context.read<PlayBloc>().add(
                            const PlayEvent.previous(),
                          ),
                      onToggleShuffle:
                          () => context.read<PlayBloc>().add(
                            const PlayEvent.toggleShuffle(),
                          ),
                      onToggleRepeat:
                          () => context.read<PlayBloc>().add(
                            const PlayEvent.toggleRepeat(),
                          ),
                    ),
                    const SizedBox(height: 30),

                    ActionButtons(
                      isFavorite: state.isFavorite,
                      onToggleFavorite:
                          () => context.read<PlayBloc>().add(
                            const PlayEvent.toggleFavorite(),
                          ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildDefaultBackground() {
    return Container(
      color: Colors.grey[900],
      child: const Center(
        child: Icon(Icons.music_note, size: 150, color: Colors.grey),
      ),
    );
  }
}

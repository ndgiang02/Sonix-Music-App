import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sonix/core/constants/constant.dart';
import 'package:sonix/core/constants/constant_assets.dart';
import 'package:sonix/core/constants/constant_icons.dart';
import 'package:sonix/core/widgets/svg_widget.dart';

class NowPlayingScreen extends StatefulWidget {
  const NowPlayingScreen({super.key});

  @override
  State<NowPlayingScreen> createState() => _NowPlayingScreenState();
}

class _NowPlayingScreenState extends State<NowPlayingScreen> {
  double _currentSliderValue = 0.5;
  bool _isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
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
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AppAssets.img_mtp,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey[900],
                  child: const Center(
                    child: Icon(
                      Icons.music_note,
                      size: 150,
                      color: Colors.grey,
                    ),
                  ),
                );
              },
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(color: Colors.black.withOpacity(0.5)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    AppAssets.img_mtp,
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.width * 0.8,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.width * 0.8,
                        color: Colors.grey[700],
                        child: const Icon(
                          Icons.music_note,
                          size: 100,
                          color: Colors.grey,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Nơi này có anh',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Text(
                  'Sơn Tùng M-TP',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.white70),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 30),

                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Theme.of(context).primaryColor,
                    inactiveTrackColor: Colors.white30,
                    thumbColor: Theme.of(context).primaryColor,
                    overlayColor: Theme.of(
                      context,
                    ).primaryColor.withOpacity(0.2),
                    thumbShape: const RoundSliderThumbShape(
                      enabledThumbRadius: 8.0,
                    ),
                    overlayShape: const RoundSliderOverlayShape(
                      overlayRadius: 16.0,
                    ),
                  ),
                  child: Slider(
                    value: _currentSliderValue,
                    min: 0.0,
                    max: 1.0,
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('0:00', style: TextStyle(color: Colors.white70)),
                      Text('3:45', style: TextStyle(color: Colors.white70)),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.shuffle,
                        color: Colors.white,
                        size: 28,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.skip_previous,
                        color: Colors.white,
                        size: 48,
                      ),
                      onPressed: () {},
                    ),

                    IconButton(
                      onPressed: () {
                        setState(() {
                          _isPlaying = !_isPlaying;
                        });
                      },
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      icon: SvgWidget(
                        ic: _isPlaying ? AppIcons.ic_search : AppIcons.ic_play,
                        width: 60,
                        height: 60,
                        color: AppColors.primary,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.skip_next,
                        color: Colors.white,
                        size: 48,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.repeat,
                        color: Colors.white,
                        size: 28,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 28,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 28,
                      ),
                      onPressed: () {
                        // Xử lý chia sẻ
                      },
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.playlist_add,
                        color: Colors.white,
                        size: 28,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

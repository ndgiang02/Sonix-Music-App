import 'package:flutter/material.dart';
import 'package:sonix/core/configs/constants/assets.dart';
import 'package:sonix/core/configs/constants/constant.dart';
import 'package:sonix/core/utils/responsive.dart';
import 'package:sonix/features/presentation/home/widget/playlist_widget.dart';
import 'package:sonix/features/presentation/home/widget/song_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedCategoryIndex = 0;
  final categories = ['All', 'Party', 'Blues', 'Sad', 'Hip Hop'];

  final List<String> demoImageUrls = [
    'https://storage.googleapis.com/kslearning/images/366939888-1621582686070-part1-1.png',
    'https://storage.googleapis.com/kslearning/images/632208212-1621582700863-part1-2.png',
    'https://storage.googleapis.com/kslearning/images/208754229-1621582715465-part1-3.png',
    'https://storage.googleapis.com/kslearning/images/670023583-1621582778561-part1-4.png',
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Spacing.x4),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hello, Giang ✨',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: secondary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: Spacing.x3),

                _buildCategorySelector(),

                const SizedBox(height: Spacing.x3),
                _buildPopularSongs(),

                _buildPlaylists(),

                _buildPlaylists(),

                _buildPlaylists(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCategorySelector() {
    return SizedBox(
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (_, index) {
          final isSelected = selectedCategoryIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedCategoryIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: isSelected ? primary : Colors.grey[800],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    categories[index],
                    style: TextStyle(
                      color: isSelected ? Colors.black : Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildPopularSongs() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Popular Songs',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: secondary,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              iconAlignment: IconAlignment.end,
              icon: const Icon(Icons.chevron_right, size: 18),
              label: const Text('See All'),
              style: TextButton.styleFrom(
                foregroundColor: surface,
                padding: EdgeInsets.zero,
              ),
            ),
          ],
        ),
        const SizedBox(height: Spacing.x4),
        SizedBox(
          height: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SongCard(
                title: 'Nơi này có anh',
                artist: 'Sơn Tùng M-TP',
                image: img_mtp,
              ),
              SongCard(
                title: 'We Don’t Talk Anymore',
                artist: 'Kyanu & Loud',
                image: img_wdtam,
              ),
              SongCard(
                title: 'We Don’t Talk Anymore',
                artist: 'Kyanu & Loud',
                image: img_wdtam,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPlaylists() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Playlists',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: secondary,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              iconAlignment: IconAlignment.end,
              icon: const Icon(Icons.chevron_right, size: 18),
              label: const Text('See All'),
              style: TextButton.styleFrom(
                foregroundColor: surface,
                padding: EdgeInsets.zero,
              ),
            ),
          ],
        ),
        const SizedBox(height: Spacing.x3),
        SizedBox(
          height: 180,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            separatorBuilder: (_, __) => const SizedBox(width: 16),
            itemBuilder: (context, index) {
              final titles = ['Chill Vibes', 'Vinahouse Vibes', 'Sleep Vibes'];
              return PlaylistCard(
                title: titles[index],
                images: demoImageUrls.sublist(0, 3),
                songCount: 42,
              );
            },
          ),
        ),
      ],
    );
  }
}

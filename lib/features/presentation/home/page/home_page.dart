import 'package:flutter/material.dart';
import 'package:sonix/core/constants/assets.dart';
import 'package:sonix/core/constants/constant.dart';
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Hello, Giang ✨',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  // _buildIconWithBadge(Icons.notifications_none, true),
                ],
              ),
              const SizedBox(height: 20),
              _buildCategorySelector(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Popular Songs',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    iconAlignment: IconAlignment.end,
                    icon: const Icon(Icons.chevron_right, size: 18),
                    label: const Text('See All'),
                    style: TextButton.styleFrom(
                      foregroundColor: AppColors.surface,
                      padding: EdgeInsets.zero,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              _buildPopularSongs(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Playlists',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    iconAlignment: IconAlignment.end,
                    icon: const Icon(Icons.chevron_right, size: 18),
                    label: const Text('See All'),
                    style: TextButton.styleFrom(
                      foregroundColor: AppColors.surface,
                      padding: EdgeInsets.zero,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              _buildPlaylists(),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Playlists',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    iconAlignment: IconAlignment.end,
                    icon: const Icon(Icons.chevron_right, size: 18),
                    label: const Text('See All'),
                    style: TextButton.styleFrom(
                      foregroundColor: AppColors.surface,
                      padding: EdgeInsets.zero,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              _buildPlaylists(),
            ],
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
                  color: isSelected ? AppColors.primary : Colors.grey[800],
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
    return SizedBox(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SongCard(
            title: 'Nơi này có anh',
            artist: 'Sơn Tùng M-TP',
            image: AppAssets.img_mtp,
          ),
          SongCard(
            title: 'We Don’t Talk Anymore',
            artist: 'Kyanu & Loud',
            image: AppAssets.img_wdtam,
          ),
          SongCard(
            title: 'We Don’t Talk Anymore',
            artist: 'Kyanu & Loud',
            image: AppAssets.img_wdtam,
          ),
        ],
      ),
    );
  }

  Widget _buildPlaylists() {
    return SizedBox(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          PlaylistCard(
            title: 'Nơi này có anh',
            songCount: 8,
            image: AppAssets.img_mtp,
          ),
          PlaylistCard(
            title: 'We Don’t Talk Anymore',
            songCount: 10,
            image: AppAssets.img_wdtam,
          ),
          PlaylistCard(
            title: 'We Don’t Talk Anymore',
            songCount: 10,
            image: AppAssets.img_wdtam,
          ),
        ],
      ),
    );
  }

  Widget _buildIconWithBadge(IconData icon, bool hasBadge) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.grey[850],
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Colors.white),
        ),
        if (hasBadge)
          Positioned(
            top: -2,
            right: -2,
            child: Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 1),
              ),
            ),
          ),
      ],
    );
  }
}

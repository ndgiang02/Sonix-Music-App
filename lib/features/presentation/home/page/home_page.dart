import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sonix/core/constants/constant.dart';
import 'package:sonix/core/constants/constant_assets.dart';

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
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTopBar(),
              const SizedBox(height: 20),
              _buildCategorySelector(),
              const SizedBox(height: 20),
              const Text(
                'Popular Songs',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              _buildPopularSongs(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Hello, Giang ✨',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        _buildIconWithBadge(Icons.notifications_none, true),
      ],
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
          _buildSongCard('Nơi này có anh', 'Sơn Tùng M-TP', AppAssets.img_mtp),
          _buildSongCard(
            'We Don’t Talk Anymore',
            'Kyanu & Loud',
            AppAssets.img_wdtam,
          ),
          _buildSongCard(
            'We Don’t Talk Anymore',
            'Kyanu & Loud',
            AppAssets.img_wdtam,
          ),
        ],
      ),
    );
  }

  Widget _buildSongCard(String title, String artist, String image) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  onError: (exception, stackTrace) {
                    log('Failed to load asset image: $exception');
                  },
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Text(
              artist,
              style: const TextStyle(color: Colors.grey),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }

  /* Widget _buildSongCard(String title, String artist, String image) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hiển thị ảnh từ URL hoặc asset
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                // Nếu 'image' là một URL, sử dụng DecorationImage với Image.network
                // Nếu 'image' là một đường dẫn asset, sử dụng DecorationImage với Image.asset
                image: DecorationImage(
                  image: Image.asset(image), // Giả định 'image' là một URL
                  fit:
                      BoxFit
                          .cover, // Đảm bảo ảnh lấp đầy không gian và cắt nếu cần
                  onError: (exception, stackTrace) {
                    // Xử lý lỗi khi tải ảnh, ví dụ hiển thị một placeholder
                    // Bạn có thể thay thế bằng một Icon hoặc Container màu xám
                    debugPrint('Failed to load image: $exception');
                  },
                ),
              ),
              // Bạn cũng có thể sử dụng Image.network trực tiếp nếu không cần DecorationImage
              // child: ClipRRect(
              //   borderRadius: BorderRadius.circular(8),
              //   child: Image.network(
              //     image,
              //     height: 100,
              //     width: double.infinity,
              //     fit: BoxFit.cover,
              //     errorBuilder: (context, error, stackTrace) {
              //       return Container(
              //         height: 100,
              //         width: double.infinity,
              //         color: Colors.grey,
              //         child: Icon(Icons.broken_image, color: Colors.white),
              //       );
              //     },
              //   ),
              // ),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white, // Đảm bảo màu chữ dễ đọc trên nền tối
              ),
              maxLines: 1, // Giới hạn một dòng
              overflow: TextOverflow.ellipsis, // Thêm dấu ... nếu quá dài
            ),
            const SizedBox(height: 4),
            Text(
              artist,
              style: const TextStyle(color: Colors.grey),
              maxLines: 1, // Giới hạn một dòng
              overflow: TextOverflow.ellipsis, // Thêm dấu ... nếu quá dài
            ),
          ],
        ),
      ),
    );
  }*/
}

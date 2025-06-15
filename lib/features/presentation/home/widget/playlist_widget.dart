import 'package:flutter/material.dart';
import 'package:sonix/core/configs/constants/constant.dart';
import 'package:sonix/core/utils/responsive.dart';

class PlaylistCard extends StatelessWidget {
  final String title;
  final List<String> images;
  final int songCount;

  const PlaylistCard({
    super.key,
    required this.title,
    required this.images,
    required this.songCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(Spacing.x3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12),
              ),
              child: buildStackedPlaylistCover(images),
            ),
            SizedBox(height: 10),
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
              '$songCount songs',
              style: Theme.of(
                context,
              ).textTheme.labelLarge!.copyWith(color: secondary),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildStackedPlaylistCover(List<String> imageUrls) {
    final images = imageUrls.take(4).toList();
    return SizedBox(
      height: 100,
      child: Stack(
        clipBehavior: Clip.none,
        children:
            List.generate(images.length, (index) {
              final scale = 1.0 - (index * 0.06);
              final offset = index * 9.0;
              return Positioned(
                top: offset,
                left: offset,
                child: Transform.scale(
                  scale: scale,
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 4,
                          offset: Offset(2, 2),
                        ),
                      ],
                      image: DecorationImage(
                        image: NetworkImage(images[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            }).reversed.toList(),
      ),
    );
  }
}

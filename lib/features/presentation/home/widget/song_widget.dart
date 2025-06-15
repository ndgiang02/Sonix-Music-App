import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sonix/core/configs/constants/constant.dart';
import 'package:sonix/core/utils/responsive.dart';

class SongCard extends StatelessWidget {
  final String title;
  final String artist;
  final String image;

  const SongCard({
    super.key,
    required this.title,
    required this.artist,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(Spacing.x1),
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
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: secondary,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Text(
              artist,
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.copyWith(color: surface),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

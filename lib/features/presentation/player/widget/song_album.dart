import 'package:flutter/material.dart';

class SongAlbum extends StatelessWidget {
  final String? imagePath;
  const SongAlbum({super.key, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child:
          imagePath != null
              ? Image.asset(
                imagePath!,
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.width * 0.8,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => _fallback(),
              )
              : _fallback(),
    );
  }

  Widget _fallback() {
    return Container(
      width: 300,
      height: 300,
      color: Colors.grey[700],
      child: const Icon(Icons.music_note, size: 100, color: Colors.grey),
    );
  }
}

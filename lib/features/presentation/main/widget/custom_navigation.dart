import 'package:flutter/material.dart';

import 'custom_paint.dart';

class AnimatedBottomNavBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const AnimatedBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  State<AnimatedBottomNavBar> createState() => _AnimatedBottomNavBarState();
}

class _AnimatedBottomNavBarState extends State<AnimatedBottomNavBar>
    with SingleTickerProviderStateMixin {
  final List<IconData> icons = [
    Icons.home,
    Icons.search,
    Icons.favorite,
    Icons.person,
    Icons.person,
  ];
  final List<String> titles = ['Home', 'Search', 'Upload', 'Profile', 'hhh'];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final sectionWidth = width / icons.length;
    final itemWidth = 100.0;
    final dipHeight = 58.0;
    final dipRadius = 40.0;

    return SizedBox(
      height: 100,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 80,
            child: CustomPaint(
              painter: Painter(
                centerX: sectionWidth * widget.selectedIndex + sectionWidth / 2,
                dipWidth: itemWidth + 20,
                dipHeight: dipHeight,
                dipRadius: dipRadius,
              ),
            ),
          ),

          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            bottom: 30,
            left:
                sectionWidth * widget.selectedIndex +
                sectionWidth / 2 -
                itemWidth / 2,
            width: itemWidth,
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                  boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 8)],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      icons[widget.selectedIndex],
                      color: Colors.blue,
                      size: 24,
                    ),
                    const SizedBox(width: 6),
                    Flexible(
                      child: Text(
                        titles[widget.selectedIndex],
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 35,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:
                  icons.asMap().entries.map((entry) {
                    int idx = entry.key;
                    IconData icon = entry.value;
                    bool selected = idx == widget.selectedIndex;
                    return GestureDetector(
                      onTap: () => widget.onItemSelected(idx),
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 300),
                        opacity: selected ? 0.0 : 1.0,
                        child: Icon(icon, color: Colors.grey, size: 26),
                      ),
                    );
                  }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

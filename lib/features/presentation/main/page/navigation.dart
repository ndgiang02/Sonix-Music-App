import 'package:flutter/material.dart';
import 'package:sonix/features/presentation/main/widget/custom_navigation.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text("Home", style: TextStyle(fontSize: 24))),
    Center(child: Text("Search", style: TextStyle(fontSize: 24))),
    Center(child: Text("Add", style: TextStyle(fontSize: 24))),
    Center(child: Text("Favorites", style: TextStyle(fontSize: 24))),
    Center(child: Text("Profile", style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: AnimatedBottomNavBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

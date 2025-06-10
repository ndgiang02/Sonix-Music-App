import 'package:flutter/material.dart';
import 'package:sonix/core/constants/icons.dart';
import 'package:sonix/features/presentation/home/page/home_page.dart';
import 'package:sonix/features/presentation/search/page/search_page.dart';

import '../widget/custom_bottombar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    Center(child: Text("List", style: TextStyle(fontSize: 24))),
    SearchPage(),
    Center(child: Text("Profile", style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: CustomBottomBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          SalomonBottomBarItem(
            icon: ic_home,
            activeIcon: ic_selected_home,
            title: Text('Home'),
          ),
          SalomonBottomBarItem(
            icon: ic_list,
            activeIcon: ic_selected_list,
            title: Text('List'),
          ),
          SalomonBottomBarItem(
            icon: ic_search,
            activeIcon: ic_search,
            title: Text('Search'),
          ),
          SalomonBottomBarItem(
            icon: ic_profile,
            activeIcon: ic_selected_profile,
            title: Text('Profile'),
          ),
        ],
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sonix/core/configs/constants/icons.dart';
import 'package:sonix/features/presentation/home/page/home_page.dart';
import 'package:sonix/features/presentation/main/bloc/main_bloc.dart';
import 'package:sonix/features/presentation/main/widget/custom_bottombar.dart';
import 'package:sonix/features/presentation/profile/page/profile.dart';
import 'package:sonix/features/presentation/search/page/search_page.dart';
import 'package:sonix/injection.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainBloc>(
      create: (context) => getIt<MainBloc>(),
      child: BlocConsumer<MainBloc, MainState>(
        builder: (cts, state) {
          return Scaffold(
            body: PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                HomePage(),
                Center(child: Text("List", style: TextStyle(fontSize: 24))),
                SearchPage(),
                ProfilePage(),
              ],
            ),
            bottomNavigationBar: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                child: CustomBottomBar(
                  currentIndex: state.index,
                  onTap: (index) {},
                  items: [
                    SalomonBottomBarItem(
                      icon: icHome,
                      activeIcon: icSelectedHome,
                      title: Text('Home'),
                    ),
                    SalomonBottomBarItem(
                      icon: icList,
                      activeIcon: icSelectedList,
                      title: Text('List'),
                    ),
                    SalomonBottomBarItem(
                      icon: icSearch,
                      activeIcon: icSearch,
                      title: Text('Search'),
                    ),
                    SalomonBottomBarItem(
                      icon: icProfile,
                      activeIcon: icSelectedProfile,
                      title: Text('Profile'),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        listener: (ctx, state) {
          _pageController.jumpToPage(state.index);
        },
      ),
    );
  }
}

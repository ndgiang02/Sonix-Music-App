import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sonix/core/configs/constants/icons.dart';
import 'package:sonix/features/presentation/home/home_screen.dart';
import 'package:sonix/features/presentation/main/bloc/main_bloc.dart';
import 'package:sonix/features/presentation/main/widget/custom_bottombar.dart';
import 'package:sonix/features/presentation/profile/profile_screen.dart';
import 'package:sonix/features/presentation/search/search_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
    return BlocConsumer<MainBloc, MainState>(
      builder: (cts, state) {
        return Scaffold(
          extendBody: true,
          body: PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              HomeScreen(),
              Center(child: Text("List", style: TextStyle(fontSize: 24))),
              SearchScreen(),
              ProfileScreen(),
            ],
          ),
          bottomNavigationBar: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
              child: CustomBottomBar(
                currentIndex: state.index,
                onTap: (index) {
                  print('Tapped index: $index');
                  context.read<MainBloc>().add(MainEvent.onChangePage(index));
                },
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
        print('State changed to index: ${state.index}');

        _pageController.animateToPage(
          state.index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      },
    );
  }
}

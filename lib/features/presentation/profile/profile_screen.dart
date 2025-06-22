import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sonix/core/configs/constants/assets.dart';
import 'package:sonix/core/utils/responsive.dart';
import 'package:sonix/features/presentation/profile/bloc/profile_bloc.dart';
import 'package:sonix/features/presentation/profile/widget/avatar_profile.dart';
import 'package:sonix/features/presentation/profile/widget/menu_item.dart';
import 'package:sonix/features/presentation/profile/widget/menu_type.dart';
import 'package:sonix/injection.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<ProfileBloc>();
    return BlocProvider<ProfileBloc>(
      create: (context) => bloc,
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(Spacing.x3),
            child: Column(
              children: [
                AvatarProfile(url: avatar),
                const SizedBox(height: Spacing.x4),
                Text(
                  'Flutter',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: Spacing.x2),
                Text(
                  'flutter@gmail.com',
                  style: Theme.of(context).textTheme.bodyMedium!,
                ),
                const SizedBox(height: Spacing.x4),
                ...MenuType.values.map(
                  (item) => MenuItem(
                    title: item.name(context),
                    icLeft: item.ic,
                    action: () async {
                      if (item == MenuType.darkMode) {
                        bloc.add(ProfileEvent.onChangeDarkMode());
                      } else if (item == MenuType.logout) {
                        log('test');
                      } else if (item == MenuType.language) {
                        log('test');
                      } else {
                        log('test');
                      }
                    },
                    type: item,
                    bloc: bloc,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

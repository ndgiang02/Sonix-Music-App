import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sonix/core/configs/constants/assets.dart';
import 'package:sonix/core/configs/constants/constant.dart';
import 'package:sonix/core/utils/responsive.dart';
import 'package:sonix/features/presentation/profile/bloc/profile_bloc.dart';
import 'package:sonix/features/presentation/profile/widget/avatar_profile.dart';
import 'package:sonix/features/presentation/profile/widget/menu_item.dart';
import 'package:sonix/features/presentation/profile/widget/menu_type.dart';
import 'package:sonix/injection.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<ProfileBloc>();
    return BlocProvider<ProfileBloc>(
      create: (context) => bloc,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(bottom: 24),
            child: Column(
              children: [
                AvatarProfile(url: avatar),
                const SizedBox(height: Spacing.x4),
                Text(
                  'Flutter',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: secondary,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'flutter@gmail.com',
                  style: Theme.of(context).textTheme.bodyMedium!,
                ),
                const SizedBox(height: 24),
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

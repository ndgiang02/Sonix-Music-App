import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sonix/core/common/widgets/svg_widget.dart';
import 'package:sonix/core/configs/constants/icons.dart';
import 'package:sonix/core/utils/responsive.dart';
import 'package:sonix/features/presentation/profile/bloc/profile_bloc.dart';

import 'menu_type.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final String icLeft;
  final VoidCallback action;
  final MenuType type;
  final ProfileBloc bloc;

  const MenuItem({
    super.key,
    required this.title,
    required this.icLeft,
    required this.action,
    required this.type,
    required this.bloc,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => action.call(),
      behavior: HitTestBehavior.translucent,
      child: Padding(
        padding: const EdgeInsets.only(
          left: Spacing.x4,
          top: 20,
          right: Spacing.x4,
        ),
        child: Row(
          children: [
            SvgWidget(ic: icLeft, color: Theme.of(context).colorScheme.primary),
            const SizedBox(width: Spacing.x4),
            Text(title, style: Theme.of(context).textTheme.titleMedium),
            const Spacer(),
            if (type == MenuType.language)
              Padding(
                padding: const EdgeInsets.only(right: Spacing.x4),
                child: BlocBuilder<ProfileBloc, ProfileState>(
                  bloc: bloc..add(ProfileEvent.onInit()),
                  builder: (context, state) {
                    return Text(
                      state.languageName ?? "Not Found",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    );
                  },
                ),
              )
            else if (type == MenuType.darkMode)
              BlocBuilder<ProfileBloc, ProfileState>(
                bloc: bloc,
                builder: (context, state) {
                  return Container(
                    width: 44,
                    height: 24,
                    padding: const EdgeInsets.all(Spacing.x1),
                    decoration: BoxDecoration(
                      color:
                          state.isDarkMode
                              ? Colors.white
                              : Colors.grey.withOpacity(0.5),
                      border: Border.all(
                        color:
                            state.isDarkMode
                                ? Theme.of(
                                  context,
                                ).colorScheme.primary.withOpacity(0.5)
                                : Colors.grey.withOpacity(0.5),
                        width: state.isDarkMode ? 1 : 0,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment:
                        state.isDarkMode
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                    child: Container(
                      height: 24,
                      width: 22,
                      decoration: BoxDecoration(
                        color:
                            state.isDarkMode
                                ? Theme.of(context).colorScheme.primary
                                : Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  );
                },
              ),
            if (type != MenuType.darkMode) SvgWidget(ic: icArrowRight),
          ],
        ),
      ),
    );
  }
}

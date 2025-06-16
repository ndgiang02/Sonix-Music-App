import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Loading extends StatelessWidget {
  final double size;
  const Loading({super.key, this.size = 34});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Center(
        child: LoadingAnimationWidget.hexagonDots(
          color: Theme.of(context).colorScheme.onPrimary,
          size: size,
        ),
      ),
    );
  }
}

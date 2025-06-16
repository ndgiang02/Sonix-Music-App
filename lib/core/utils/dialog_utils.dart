import 'package:flutter/material.dart';
import 'package:sonix/core/common/widgets/loading.dart';
import 'package:sonix/main.dart';

class DialogUtils {
  static void loading() {
    showDialog(
      barrierDismissible: false,
      context: navigatorKey.currentState!.context,
      builder: (_) => Loading(),
    );
  }

  static void hideLoading() {
    Navigator.pop(navigatorKey.currentState!.context);
  }
}

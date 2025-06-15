import 'package:flutter/material.dart';

class Responsive {
  static width(double size, BuildContext context) {
    return MediaQuery.of(context).size.width * (size / 100);
  }

  static height(double size, BuildContext context) {
    return MediaQuery.of(context).size.height * (size / 100);
  }
}

class Spacing {
  static const double x0 = 0;
  static const double x1 = 2;
  static const double x2 = 4;
  static const double x3 = 8;
  static const double x4 = 16;
  static const double x5 = 32;
}

import 'package:flutter/material.dart';

class CurvedPainter extends CustomPainter {
  final int index;

  CurvedPainter({required this.index});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint =
        Paint()
          ..color = Colors.black
          ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 20);
    path.quadraticBezierTo(size.width * 0.2, 0, size.width * 0.4, 0);
    path.arcToPoint(
      Offset(size.width * 0.6, 0),
      radius: Radius.circular(40),
      clockwise: false,
    );
    path.quadraticBezierTo(size.width * 0.8, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

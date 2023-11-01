import 'package:flutter/material.dart';

class HeartIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    print("zhu====${size.width}===${size.height}");
    final paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(size.width / 2, size.height / 5)
      ..cubicTo(size.width / 3, 0, 0, size.height / 3.5, size.width / 2, size.height)
      ..cubicTo(size.width, size.height / 3.5, size.width * 2 / 3, 0, size.width / 2, size.height / 5);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
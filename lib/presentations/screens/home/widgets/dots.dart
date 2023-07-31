import 'dart:math';
import 'package:flutter/material.dart';


class Dots extends StatelessWidget {
  final double radius;
  final double dotRadius;
  final int dotCount;
  final double centerX;
  final double centerY;
  final Color dotColor;

  const Dots({
    super.key,
    required this.radius,
    required this.dotRadius,
    required this.centerX,
    required this.centerY,
    required this.dotCount,
    required this.dotColor,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DotsArc(
        radius: radius,
        centerX: centerX,
        centerY: centerY,
        dotCount: dotCount,
        dotColor: dotColor,
        dotRadius: dotRadius,
      ),
    );
  }
}

class DotsArc extends CustomPainter {
  late double radius;
  late double dotRadius;
  late double centerX;
  late double centerY;
  late int dotCount;
  late Color dotColor;

  DotsArc({
    required this.radius,
    required this.dotRadius,
    required this.dotCount,
    required this.centerX,
    required this.centerY,
    required this.dotColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // implement paint

    // dots
    final double angleGap = (pi * 6 / 4 - 0.2) / (dotCount);
    final Paint dotPaint = Paint()..color = dotColor;

    for (int i = 0; i <= dotCount + 1; i++) {
      final double angle = angleGap * i + 0.76 * pi;
      final double x = centerX + radius * cos(angle);
      final double y = centerY + radius * sin(angle);

      canvas.drawCircle(Offset(x, y), dotRadius, dotPaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // implement shouldRepaint
    return false;
  }
}

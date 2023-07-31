import 'dart:math';
import 'package:flutter/material.dart';

import 'package:trackizer/cofig/constants/theme/colors.dart';

class ExpenseMeter extends StatefulWidget {
  final int totalBudget;
  final int totalExpense;
  final void Function(int value) setExpenseValue;

  const ExpenseMeter({
    super.key,
    required this.totalExpense,
    required this.totalBudget,
    required this.setExpenseValue,
  });

  @override
  State<ExpenseMeter> createState() => _ExpenseMeterState();
}

class _ExpenseMeterState extends State<ExpenseMeter>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;

  @override
  void initState() {
    // implement initState
    super.initState();

    animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    final CurvedAnimation curvedAnimation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOut,
    );

    animation = Tween<double>(
      begin: 0,
      end: (pi * 6 * widget.totalExpense) / (4 * widget.totalBudget),
    ).animate(curvedAnimation)
      ..addListener(() {
        double value = curvedAnimation.value * widget.totalExpense;
        widget.setExpenseValue(
          value.round()
        );
      });

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    // implement build
    return Container(
      alignment: Alignment.center,
      child: Stack(
        children: <Widget>[
          CustomPaint(
            size: const Size(250, 250),
            painter: ExpenseMeterArc(
              true,
              null,
              const Color(0XFF4E4E61).withOpacity(0.2),
            ),
          ),
          CustomPaint(
            size: const Size(250, 250),
            painter: ExpenseMeterArc(false, animation.value, accentP100),
          ),
        ],
      ),
    );
  }
}

class ExpenseMeterArc extends CustomPainter {
  bool isBackgroundTrack;
  double? arc;
  Color progressColor;

  ExpenseMeterArc(
    this.isBackgroundTrack,
    this.arc,
    this.progressColor,
  );

  @override
  void paint(Canvas canvas, Size size) {
    // implement paint

    const double startAngle = pi * 0.75;
    final double sweepAngle = arc ?? pi * 0.25 * 6;

    // arc
    const Rect rect = Rect.fromLTRB(0, 0, 250, 250);
    final Paint arcPaint = Paint()
      ..strokeWidth = 10
      ..color = progressColor
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..maskFilter =
          !isBackgroundTrack ? const MaskFilter.blur(BlurStyle.solid, 6) : null;

    if (isBackgroundTrack) {}

    canvas.drawArc(
      rect,
      startAngle,
      sweepAngle,
      false,
      arcPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // implement shouldRepaint
    return true;
  }
}

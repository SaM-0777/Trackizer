import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:trackizer/cofig/constants/theme/colors.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int index;
  final void Function(int index) setSelectedIndex;

  const CustomBottomNavigationBar({
    super.key,
    required this.index,
    required this.setSelectedIndex,
  });

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: double.infinity,
      height: 80,
      child: Stack(alignment: Alignment.bottomCenter, children: <Widget>[
        CustomPaint(
          size: Size(MediaQuery.of(context).size.width * 0.9, 52),
          painter: BottomNavigationTabPainter(),
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.only(bottom: 3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: accentP100.withOpacity(0.5),
                  blurRadius: 25,
                  blurStyle: BlurStyle.normal,
                  offset: const Offset(0, 8),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: FloatingActionButton(
              elevation: 2,
              backgroundColor: accentP100,
              splashColor: Colors.transparent,
              onPressed: () {},
              child: SvgPicture.asset(
                'assets/icons/PlusIconFill.svg',
              ),
            ),
          ),
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                GestureDetector(
                  onTap: () => widget.setSelectedIndex(0),
                  child: SvgPicture.asset(
                    widget.index == 0
                      ? "assets/icons/HomeIconWhiteOutline.svg"
                      : "assets/icons/HomeIconGreyOutline.svg",
                  ),
                ),
                GestureDetector(
                  onTap: () => widget.setSelectedIndex(1),
                  child: SvgPicture.asset(
                    widget.index == 1
                      ? "assets/icons/BudgetsIconWhiteOutline.svg"
                      : "assets/icons/BudgetsIconGreyOutline.svg",
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9 * 0.05,
                ),
                GestureDetector(
                  onTap: () => widget.setSelectedIndex(2),
                  child: SvgPicture.asset(
                    widget.index == 2
                      ? "assets/icons/CalendarIconWhiteOutline.svg"
                      : "assets/icons/CalendarIconGreyOutline.svg",
                  ),
                ),
                GestureDetector(
                  onTap: () => widget.setSelectedIndex(3),
                  child: SvgPicture.asset(
                    widget.index == 3
                      ? "assets/icons/CreditCardIconWhiteOutline.svg"
                      : "assets/icons/CreditCardIconGreyOutline.svg",
                  ),
                ),
              ],
            )
          ),
        ]
      ),
    );
  }
}

class BottomNavigationTabPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // implement paint
    Paint paint = Paint()
      ..color = grey60.withOpacity(0.75)
      ..style = PaintingStyle.fill;

    Path path = Path()..moveTo(0, 16);
    path.quadraticBezierTo(0, 0, 16, 0);
    path.lineTo(size.width * 0.4 - 10, 0);
    path.quadraticBezierTo(size.width * 0.4, 0, size.width * 0.4, 10);
    path.arcToPoint(
      Offset(size.width * 0.6, 10),
      radius: const Radius.circular(30),
      clockwise: false,
    );
    path.quadraticBezierTo(size.width * 0.6, 0, size.width * 0.6 + 10, 0);
    path.lineTo(size.width - 16, 0);
    path.quadraticBezierTo(size.width, 0, size.width, 16);
    path.lineTo(size.width, size.height - 16);
    path.quadraticBezierTo(
        size.width, size.height, size.width - 16, size.height);
    path.lineTo(16, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height - 16);

    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // implement shouldRepaint
    return false;
  }
}

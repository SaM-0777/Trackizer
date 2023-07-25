import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:trackizer/cofig/constants/theme/typography.dart';

class PrimaryIconButton extends StatelessWidget {
  final Color color;
  final void Function() onPressed;
  final String iconPath;
  final String labelText;
  final Color labelColor;
  final List<BoxShadow>? boxShadow;

  const PrimaryIconButton({
    super.key,
    required this.color,
    required this.onPressed,
    required this.iconPath,
    required this.labelText,
    required this.labelColor,
    this.boxShadow,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: color,
        boxShadow: boxShadow,
        borderRadius: const BorderRadius.all(Radius.elliptical(999, 999)),
      ),
      child: TextButton.icon(
        style: ButtonStyle(
          overlayColor:
              MaterialStateColor.resolveWith((states) => Colors.transparent),
        ),
        onPressed: onPressed,
        icon: SvgPicture.asset(
          iconPath,
          width: 20,
        ),
        label: Text(
          labelText,
          style: headline2.copyWith(color: labelColor),
        ),
      ),
    );
  }
}

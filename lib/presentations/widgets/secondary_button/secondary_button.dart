import 'package:flutter/material.dart';

import 'package:trackizer/cofig/constants/theme/colors.dart';
import 'package:trackizer/cofig/constants/theme/typography.dart';

class SecondaryButton extends StatelessWidget {
  final String label;
  final void Function() onPressed;

  const SecondaryButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        color: white.withOpacity(0.1),
        shape: BoxShape.rectangle,
        border: Border.all(color: white.withOpacity(0.15), width: 1.0),
        borderRadius: const BorderRadius.all(Radius.elliptical(100, 100)),
      ),
      child: TextButton(
        style: ButtonStyle(
          splashFactory: NoSplash.splashFactory,
          overlayColor:
              MaterialStateColor.resolveWith((states) => Colors.transparent),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: headline2.copyWith(color: white),
        ),
      ),
    );
  }
}

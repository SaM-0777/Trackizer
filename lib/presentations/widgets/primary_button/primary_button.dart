import 'package:flutter/material.dart';

import 'package:trackizer/cofig/constants/theme/colors.dart';
import 'package:trackizer/cofig/constants/theme/typography.dart';


class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: accentP100.withOpacity(0.5),
            blurRadius: 8,
            spreadRadius: 0,
            offset: const Offset(0, 5)
          )
        ],
        borderRadius: const BorderRadius.all(Radius.elliptical(100, 100)),
        gradient: const RadialGradient(
          radius: 0.1,
          colors: [
            white,
            accentP100,
          ]
        )
      ),
      child: TextButton(
        style: ButtonStyle(
          splashFactory: NoSplash.splashFactory,
          overlayColor: MaterialStateColor.resolveWith((states) => Colors.transparent),
        ),
        child: Text(
          "Get Started",
          style: headline2.copyWith(color: white,),
        ),
        onPressed: (){}, 
      ),
    );
  }
}
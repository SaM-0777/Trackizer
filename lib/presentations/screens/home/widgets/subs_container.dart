import 'package:flutter/material.dart';

import 'package:trackizer/cofig/constants/theme/colors.dart';
import 'package:trackizer/cofig/constants/theme/typography.dart';

class SubsContainer extends StatelessWidget {
  final String title;
  final String value;
  final Color accentColor;

  const SubsContainer({
    super.key,
    required this.title,
    required this.value,
    required this.accentColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: grey60.withOpacity(0.2),
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              border: Border.all(
                color: white.withOpacity(0.15),
              )),
          child: Column(
            children: <Widget>[
              Text(
                title,
                style: headline1.copyWith(color: grey40),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                value,
                style: headline2.copyWith(color: white),
              ),
            ],
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          child: Align(
            child: Container(
              width: 46,
              height: 1,
              color: accentColor,
            ),
          ),
        ),
      ],
    );
  }
}

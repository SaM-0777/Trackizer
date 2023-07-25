import 'package:flutter/material.dart';

import 'package:trackizer/cofig/constants/theme/colors.dart';
import 'package:trackizer/cofig/constants/theme/typography.dart';

class FormInput extends StatelessWidget {
  final String label;

  const FormInput({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: bodyMedium.copyWith(
            color: grey50,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
            border: Border.all(
              width: 1,
              color: grey70,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              style: headline3.copyWith(color: white),
              autofocus: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusColor: grey60.withOpacity(0.2),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

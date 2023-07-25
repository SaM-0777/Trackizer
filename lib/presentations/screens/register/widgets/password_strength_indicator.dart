import 'package:flutter/material.dart';

import 'package:trackizer/cofig/constants/theme/colors.dart';


class PasswordStrengthIndicator extends StatelessWidget {
  const PasswordStrengthIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ...List.generate(4, (index) => {}).map(
          (e) => 
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Container(
                height: 5.0,
                decoration: const BoxDecoration(
                  color: grey70,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(9),
                    bottomLeft: Radius.circular(9),
                  ),
                ),
              ),
            ),
          ),
        ).toList(),
      ],
    );
  }
}

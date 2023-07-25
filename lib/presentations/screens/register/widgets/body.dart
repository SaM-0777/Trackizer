import 'package:flutter/material.dart';

import 'package:trackizer/cofig/constants/theme/colors.dart';
import 'package:trackizer/cofig/constants/theme/typography.dart';

import 'package:trackizer/presentations/widgets/form_input/form_input.dart';
import 'package:trackizer/presentations/widgets/primary_button/primary_button.dart';
import 'package:trackizer/presentations/widgets/secondary_button/secondary_button.dart';

import 'package:trackizer/presentations/screens/register/widgets/password_strength_indicator.dart';


class Body extends StatelessWidget {
  const Body({super.key,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Center(
        child: Column(
          children: <Widget>[
            const Spacer(),
            const FormInput(
              label: "E-mail address",
            ),
            const SizedBox(
              height: 20,
            ),
            const FormInput(
              label: "Password",
            ),
            const SizedBox(
              height: 20,
            ),
            const PasswordStrengthIndicator(),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Use 8 or more characters with a mix of letters, numbers & symbols.",
              style: bodyMedium.copyWith(color: grey50),
            ),
            const SizedBox(
              height: 20,
            ),
            PrimaryButton(text: "Get's started, it's free!", onPressed: () {}),
            const SizedBox(
              height: 20,
            ),
            const Spacer(),
            Text(
              "Do you already have an account?",
              style: bodyMedium.copyWith(color: white),
            ),
            const SizedBox(
              height: 20,
            ),
            SecondaryButton(label: "Sign In", onPressed: () {
              Navigator.pushNamed(context, '/login');
            }),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

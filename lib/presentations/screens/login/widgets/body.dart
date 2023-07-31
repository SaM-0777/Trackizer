import 'package:flutter/material.dart';

import 'package:trackizer/cofig/constants/theme/colors.dart';
import 'package:trackizer/cofig/constants/theme/typography.dart';

import 'package:trackizer/presentations/widgets/form_input/form_input.dart';
import 'package:trackizer/presentations/widgets/primary_button/primary_button.dart';

import 'package:trackizer/presentations/widgets/secondary_button/secondary_button.dart';


class Body extends StatelessWidget {
  const Body({
    super.key,
  });

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
              height: 10,
            ),
            Container(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: (){},
                style: const ButtonStyle(
                  splashFactory: NoSplash.splashFactory,
                ),
                child: Text(
                  "Forgot Password?",
                  style: bodyMedium.copyWith(color: grey50),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            PrimaryButton(text: "Sign In", onPressed: (){
              Navigator.pushNamed(context, '/app');
            }),
            const Spacer(),
            Text(
              "If you don't have an account yet?",
              style: bodyMedium.copyWith(color: white),
            ),
            const SizedBox(
              height: 20,
            ),
            SecondaryButton(label: "Sign Up", onPressed: () {
              Navigator.pushNamed(context, '/register');
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

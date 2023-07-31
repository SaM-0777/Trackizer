import 'package:flutter/material.dart';

import 'package:trackizer/cofig/constants/theme/colors.dart';
import 'package:trackizer/cofig/constants/theme/typography.dart';

import 'package:trackizer/presentations/widgets/primary_button/primary_button.dart';
import 'package:trackizer/presentations/widgets/secondary_button/secondary_button.dart';

Stack body(
  BuildContext context,
) {

  void onPressGetStarted() {
    Navigator.pushNamed(context, '/register-options');
  }
  void onPressHaveAnAccount() {
    Navigator.pushNamed(context, '/login');
  }

  return Stack(
    children: [
      Positioned(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Image.asset(
                  'assets/images/WelcomeFrame.png',
                  alignment: Alignment.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(
                "Welcome to Trackizer, your ultimate expense tracking companion. Simplify budgeting, save more, and achieve financial goals effortlessly!",
                style: bodyMedium.copyWith(
                  color: white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            PrimaryButton(
              text: "Get Started",
              onPressed: onPressGetStarted,
            ),
            const SizedBox(
              height: 15.0,
            ),
            SecondaryButton(
              label: "I have an account",
              onPressed: onPressHaveAnAccount,
            ),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
      Positioned(
        top: 10,
        left: 0,
        child: Image.asset(
          'assets/images/Left.png',
        ),
      ),
      Positioned(
        bottom: 80,
        right: -2,
        child: Image.asset(
          'assets/images/Right.png',
        ),
      ),
      Positioned(
        top: 270,
        right: 40,
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: accentP100.withOpacity(0.25),
                blurRadius: 200,
                spreadRadius: 85,
              ),
            ],
          ),
        )
      ),
    ],
  );
}

import 'package:flutter/material.dart';

import 'package:trackizer/cofig/constants/theme/colors.dart';
import 'package:trackizer/cofig/constants/theme/typography.dart';

import 'package:trackizer/presentations/widgets/primary_button/primary_button.dart';
import 'package:trackizer/presentations/widgets/secondary_button/secondary_button.dart';


Column body() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Center(
        child: Image.asset(
          'assets/images/WelcomeFrame.png',
          alignment: Alignment.center,
          
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Text(
          "Welcome to Trackizer, your ultimate expense tracking companion. Simplify budgeting, save more, and achieve financial goals effortlessly!",
          style: bodyMedium.copyWith(color: white,),
          textAlign: TextAlign.center,
        ),
      ),
      const SizedBox(height: 40.0,),
      const PrimaryButton(),
      const SizedBox(height: 15.0,),
      const SecondaryButton(),
      const SizedBox(height: 20.0,),
    ],
  );
}
import 'package:flutter/material.dart';

import 'package:trackizer/cofig/constants/theme/colors.dart';

import 'package:trackizer/presentations/screens/welcome/widgets/appbar.dart';
import 'package:trackizer/presentations/screens/welcome/widgets/body.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey80,
      appBar: appbar(),
      body: body(context),
    );
  }
}

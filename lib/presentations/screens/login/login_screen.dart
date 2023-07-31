import 'package:flutter/material.dart';

import 'package:trackizer/cofig/constants/theme/colors.dart';

import 'package:trackizer/presentations/widgets/appbar/appbar.dart';

import 'widgets/body.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey80,
      appBar: appbar(),
      body: const Body(),
    );
  }
}

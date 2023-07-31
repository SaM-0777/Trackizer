import 'package:flutter/material.dart';

import 'package:trackizer/cofig/constants/theme/colors.dart';

import 'widgets/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: grey80,
      child: const Body(),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:trackizer/cofig/constants/theme/colors.dart';
import 'package:trackizer/presentations/widgets/appbar/appbar.dart';
import 'package:trackizer/presentations/screens/register_options/widgets/body.dart';


class RegisterOptionsScreen extends StatelessWidget {
  const RegisterOptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey80,
      appBar: appbar(),
      body: body(context),
    );
  }
}

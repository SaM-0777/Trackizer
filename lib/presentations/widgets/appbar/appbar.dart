import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:trackizer/cofig/constants/theme/colors.dart';
import 'package:trackizer/cofig/constants/theme/typography.dart';


AppBar appbar() {
  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 0,
    backgroundColor: grey80,
    centerTitle: true,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SvgPicture.asset(
          'assets/logo/logo.svg',
          width: 24,
          height: 24,
        ),
        const SizedBox(width: 12.0,),
        Text(
          "Trackizer".toUpperCase(),
          style: headline3.copyWith(fontSize: 18.0),
        ),
      ],
    ),
  );
}

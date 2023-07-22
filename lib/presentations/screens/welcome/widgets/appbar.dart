import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:trackizer/cofig/constants/theme/colors.dart';


AppBar appbar() {
  return AppBar(
    elevation: 0,
    backgroundColor: grey80,
    centerTitle: true,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SvgPicture.asset(
          'assets/logo/logo.svg',
          width: 25,
          height: 25,
        ),
        const SizedBox(width: 12.0,),
        Text("Trackizer".toUpperCase(),),
      ],
    ),
  );
}

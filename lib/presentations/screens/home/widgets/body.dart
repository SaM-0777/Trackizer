import 'package:flutter/material.dart';

import 'header.dart';
import 'tab_view.dart';

class Body extends StatelessWidget {

  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: const <Widget>[
        HomeHeader(),
        SizedBox(
          height: 20,
        ),
        TabView(),
      ],
    );
  }
}

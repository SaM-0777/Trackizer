import 'package:flutter/material.dart';

import 'package:trackizer/cofig/constants/theme/colors.dart';
import 'package:trackizer/cofig/constants/theme/typography.dart';

import 'package:trackizer/presentations/widgets/primary_icon_button/primary_icon_button.dart';
import 'package:trackizer/presentations/widgets/secondary_button/secondary_button.dart';


Column body(
  BuildContext context
) {
  return Column(
    children: <Widget>[
      const Spacer(),
      Center(
        child: Column(
          children: <Widget>[
            PrimaryIconButton(
              color: Colors.black,
              onPressed: (){},
              labelText: "Signup with apple",
              labelColor: white,
              iconPath: "assets/icons/AppleIconFill.svg",
              boxShadow:const <BoxShadow>[
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 8,
                  spreadRadius: 0,
                  offset: Offset(0, 2)
                ),
              ],
            ),
            const SizedBox(height: 20,),
            PrimaryIconButton(
              color: white,
              onPressed: (){},
              labelText: "Signup with google",
              labelColor: Colors.black,
              iconPath: "assets/icons/GoogleIconFill.svg",
              boxShadow:const <BoxShadow>[
                BoxShadow(
                  color: white,
                  blurRadius: 4,
                  spreadRadius: 0,
                  offset: Offset(0, 2)
                ),
              ],
            ),
            const SizedBox(height: 20,),
            PrimaryIconButton(
              color: const Color(0XFF1771E6),
              onPressed: (){},
              labelText: "Signup with facebook",
              labelColor: white,
              iconPath: "assets/icons/FacebookIconFill.svg",
              boxShadow:const <BoxShadow>[
                BoxShadow(
                  color: Color(0XFF1771E6),
                  blurRadius: 8,
                  spreadRadius: 0,
                  offset: Offset(0, 2)
                ),
              ],
            ),
            const SizedBox(height: 50,),
            Text(
              "or",
              style: headline2.copyWith(color: white),
            ),
            const SizedBox(height: 50,),
            SecondaryButton(
              label: "Signup with E-mail",
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "By registering, you agree to our Terms of Use. Learn how we collect, use and share your data.",
                style: bodySmall.copyWith(color: grey50,),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      const SizedBox(height: 20,),
    ],
  );
}

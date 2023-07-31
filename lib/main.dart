import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:trackizer/presentations/routes/routes.dart';
import 'package:trackizer/presentations/screens/welcome/welcome_screen.dart';


void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trackizer',
      routes: routes,
      theme: ThemeData(
        fontFamily: "Inter",
      ),
      home: const WelcomeScreen(),
    );
  }
}


import 'package:flutter/material.dart';

import 'package:trackizer/presentations/screens/welcome/welcome_screen.dart';
import 'package:trackizer/presentations/screens/register_options/register_options_screen.dart';
import 'package:trackizer/presentations/screens/register/register_screen.dart';
import 'package:trackizer/presentations/screens/login/login_screen.dart';


Map<String, Widget Function(BuildContext)> routes = {
  '/welcome': (context) => const WelcomeScreen(),
  '/register-options':(context) => const RegisterOptionsScreen(),
  '/register':(context) => const RegisterScreen(),
  '/login':(context) => const LoginScreen(),
};

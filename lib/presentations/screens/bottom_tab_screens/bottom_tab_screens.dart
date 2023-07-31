import 'package:flutter/material.dart';

import 'package:trackizer/presentations/screens/budget/budget_screen.dart';
import 'package:trackizer/presentations/screens/calender/calender_screen.dart';
import 'package:trackizer/presentations/screens/creditcard/credit_card_screen.dart';
import 'package:trackizer/presentations/screens/home/home.dart';

import 'package:trackizer/presentations/widgets/bottom_navigation_bar/bottom_navigation_bar.dart';

import 'package:trackizer/cofig/constants/theme/colors.dart';

class BottomTabScreens extends StatefulWidget {
  const BottomTabScreens({super.key});

  @override
  State<BottomTabScreens> createState() => _BottomTabScreensState();
}

class _BottomTabScreensState extends State<BottomTabScreens> {
  int _selectedIndex = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    const BudgetScreen(),
    const CalenderScreen(),
    const CreditCardScreen(),
  ];

  void _setSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey80,
      body: screens[_selectedIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        index: _selectedIndex,
        setSelectedIndex: _setSelectedIndex,
      ),
    );
  }
}

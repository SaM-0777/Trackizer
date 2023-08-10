import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:trackizer/cofig/constants/theme/colors.dart';
import 'package:trackizer/cofig/constants/theme/typography.dart';

import 'dots.dart';
import 'expense_meter.dart';
import 'subs_container.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({
    super.key,
  });

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  final int _currentExpense = 1253;
  int _expenseMeterAnimationValue = 0;
  void setExpenseMeterAnimationValue(int value) {
    setState(() {
      _expenseMeterAnimationValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final RegExp reg = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
    matchFunc(Match match) => '${match[1]},';

    return Container(
      decoration: const BoxDecoration(
        color: grey70,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 15, 0),
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/SettingsIconOutline.svg',
                  width: 25,
                  height: 25,
                ),
                color: Colors.transparent,
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
              ),
            ),
          ),
          Stack(
            children: <Widget>[
              Positioned(
                child: ExpenseMeter(
                  totalExpense: _currentExpense,
                  totalBudget: 2000,
                  setExpenseValue: setExpenseMeterAnimationValue,
                ),
              ),
              const Positioned(
                child: Center(
                  child: Dots(
                    radius: 99,
                    centerX: 0,
                    centerY: 125,
                    dotColor: grey60,
                    dotCount: 33,
                    dotRadius: 2.5,
                  ),
                ),
              ),
              Positioned(
                child: Center(
                  child: Dots(
                    radius: 150,
                    centerX: 0,
                    centerY: 125,
                    dotColor: grey60.withOpacity(0.25),
                    dotCount: 55,
                    dotRadius: 2.35,
                  ),
                ),
              ),
              Positioned(
                child: Center(
                  child: Dots(
                    radius: 180,
                    centerX: 0,
                    centerY: 125,
                    dotColor: grey60.withOpacity(0.18),
                    dotCount: 77,
                    dotRadius: 2.35,
                  ),
                ),
              ),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.asset(
                            'assets/logo/logo.svg',
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Trackizer".toUpperCase(),
                            style: headline3.copyWith(color: white),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "\$${_expenseMeterAnimationValue.toString().replaceAllMapped(reg, matchFunc)}",
                        style: headline7.copyWith(color: white),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "This month bill",
                        style: headline1.copyWith(color: grey40),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      TextButton(
                        style: ButtonStyle(
                          splashFactory: NoSplash.splashFactory,
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => white.withOpacity(0.1)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(999),
                              side: BorderSide(
                                  width: 1, color: white.withOpacity(0.15)),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Text(
                            "See your Budget",
                            style: headline1.copyWith(color: white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SubsContainer(
                  title: "Active Subs",
                  value: 12.toString(),
                  accentColor: accentP50,
                ),
                const SizedBox(
                  width: 10,
                ),
                SubsContainer(
                  title: "Highest Subs",
                  value: "\$${19.99.toString()}",
                  accentColor: const Color(0XFFAD7BFF),
                ),
                const SizedBox(
                  width: 10,
                ),
                SubsContainer(
                  title: "Lowest Subs",
                  value: "\$${5.99.toString()}",
                  accentColor: accentS50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

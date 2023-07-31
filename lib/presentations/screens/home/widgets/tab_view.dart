import 'package:flutter/material.dart';

import 'package:trackizer/cofig/constants/theme/colors.dart';
import 'package:trackizer/cofig/constants/theme/typography.dart';

import 'list_item.dart';

class TabView extends StatelessWidget {
  const TabView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> subTabData = [
      {
        "id": 1,
        "icon": "assets/icons/SpotifyIcon.svg",
        //"date": DateTime(2020, 6, 26),
        "subtitle": "Spotify",
        "price": "5.99",
      },
      {
        "id": 2,
        "icon": "assets/icons/YTPremiumIcon.svg",
        //"date": DateTime(2020, 6, 26),
        "subtitle": "Youtube Premium",
        "price": "18.99",
      },
      {
        "id": 3,
        "icon": "assets/icons/OneDriveIcon.svg",
        //"date": DateTime(2020, 6, 26),
        "subtitle": "Microsoft OneDrive",
        "price": "29.99",
      },
    ];
    final List<Map<String, dynamic>> billTabData = [
      {
        "id": 1,
        "date": DateTime(2020, 6, 26),
        "subtitle": "Spotify",
        "price": "5.99",
      },
      {
        "id": 2,
        "date": DateTime(2020, 6, 25),
        "subtitle": "Youtube Premium",
        "price": "18.99",
      },
      {
        "id": 3,
        "date": DateTime(2020, 6, 25),
        "subtitle": "Microsoft OneDrive",
        "price": "29.99",
      },
    ];

    return Expanded(
      child: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 12,
                ),
                decoration: BoxDecoration(
                  color: grey100,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: grey60.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: white.withOpacity(0.15),
                      width: 1,
                    ),
                  ),
                  tabs: const <Widget>[
                    Tab(
                      child: Text(
                        "Your subscriptions",
                        style: headline1,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Upcoming bills",
                        style: headline1,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Flexible(
                fit: FlexFit.loose,
                child: TabBarView(children: <Widget>[
                  ListView.builder(
                    itemExtent: 70,
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return ListItem(
                        subIcon: subTabData[index]["icon"],
                        subTitle: subTabData[index]["subtitle"],
                        price: subTabData[index]["price"],
                      );
                    },
                  ),
                  ListView.builder(
                    itemExtent: 70,
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return ListItem(
                        subDate: billTabData[index]["date"],
                        subTitle: billTabData[index]["subtitle"],
                        price: billTabData[index]["price"],
                      );
                    },
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

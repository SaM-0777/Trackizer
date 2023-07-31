import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:trackizer/cofig/constants/theme/colors.dart';
import 'package:trackizer/cofig/constants/theme/typography.dart';

class ListItem extends StatelessWidget {
  final String? subIcon;
  final DateTime? subDate;
  final String subTitle;
  final String price;

  const ListItem({
    super.key,
    this.subIcon,
    this.subDate,
    required this.subTitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
      alignment: Alignment.center,
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: grey70,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              if(subIcon != null) SvgPicture.asset(
                subIcon!,
                width: 40,
                height: 40,
              ),
              if (subDate != null) Container(
                width: 40,
                height: 40,
                margin: const EdgeInsets.symmetric(vertical: 2),
                decoration: BoxDecoration(
                  color: grey70,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Jun",
                      style: bodySmall.copyWith(
                        color: grey30,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "26",
                      style: headline2.copyWith(color: grey30),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                subTitle,
                style: headline2.copyWith(color: white),
              ),
            ],
          ),
          Text(
            "\$$price",
            style: headline2.copyWith(color: white),
          )
        ],
      ),
    );
  }
}

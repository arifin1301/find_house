import 'package:flutter/material.dart';
import 'package:find_house/models/tips.dart';
import 'package:find_house/pages/theme.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;
  TipsCard(this.tips);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24.0),
      child: Row(
        children: [
          Image.asset(
            tips.ImageUrl,
            width: 80,
            height: 80,
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tips.title,
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                tips.date,
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Spacer(),
          Icon(
            Icons.keyboard_arrow_right_outlined,
            size: 30,
          ),
        ],
      ),
    );
  }
}

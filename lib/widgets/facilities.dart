import 'package:find_house/pages/theme.dart';
import 'package:flutter/material.dart';

class Facalities extends StatelessWidget {
  final String imageUrl;
  final String name;
  final int total;

  Facalities({required this.imageUrl, required this.name, required this.total});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: 32,
          height: 32,
        ),
        SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(children: [
            TextSpan(
              text: total.toString(),
              style: purpleTextStyle.copyWith(fontSize: 14),
            ),
            TextSpan(
              text: ' ' + name,
              style: greyTextStyle.copyWith(fontSize: 14),
            ),
          ]),
        ),
      ],
    );
  }
}

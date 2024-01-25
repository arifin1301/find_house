import 'package:find_house/models/city.dart';
import 'package:find_house/pages/theme.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final City city;
  CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 130,
        color: Color(0xffF6F7F8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  city.ImageUrl,
                  width: 130,
                  height: 112,
                  fit: BoxFit.cover,
                ),
                city.populer
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(
                            color: purpleColor,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(25),
                            ),
                          ),
                          child: Icon(
                            Icons.star,
                            color: orangeColor,
                          ),
                        ),
                      )
                    : Container()
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              city.name,
              style: blackTextStyle.copyWith(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}

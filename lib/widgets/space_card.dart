import 'package:find_house/models/space.dart';
import 'package:find_house/pages/detail_page.dart';
import 'package:find_house/pages/theme.dart';
import 'package:flutter/material.dart';

class SpaceCard extends StatelessWidget {
  final Space space;

  SpaceCard(this.space);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Stack(
              children: [
                Image.asset(
                  space.ImageUrl,
                  width: 130,
                  height: 110,
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      color: purpleColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(18),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: orangeColor,
                        ),
                        Text(
                          space.rating,
                          style: whiteTextStyle,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                space.name,
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: "\$",
                    style: blackTextStyle.copyWith(
                      color: purpleColor,
                      fontSize: 16,
                    )),
                TextSpan(
                    text: space.cost.toString(),
                    style: blackTextStyle.copyWith(
                      color: purpleColor,
                      fontSize: 16,
                    )),
                TextSpan(
                    text: ' / month',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ))
              ])),
              SizedBox(
                height: 16,
              ),
              Text(
                space.address,
                style: greyTextStyle.copyWith(fontSize: 14),
              )
            ],
          )
        ],
      ),
    );
  }
}

import 'package:find_house/models/city.dart';
import 'package:find_house/pages/theme.dart';
import 'package:find_house/widgets/city_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 24.0,
            left: 24.0,
          ),
          child: ListView(
            children: [
              Text("Explore Now", style: blackTextStyle.copyWith(fontSize: 26)),
              SizedBox(
                height: 2,
              ),
              Text(
                "Mencari Kosan yang Cozy",
                style: greyTextStyle.copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Populer Cities',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 160,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CityCard(
                      City(
                          id: 1,
                          name: 'Jakarta',
                          ImageUrl: 'assets/images/pic_city1.png',
                          populer: false),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    CityCard(
                      City(
                          id: 2,
                          name: 'Bandung',
                          ImageUrl: 'assets/images/pic_city2.png',
                          populer: true),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    CityCard(
                      City(
                          id: 3,
                          name: 'Surabaya',
                          ImageUrl: 'assets/images/pic_city3.png',
                          populer: false),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

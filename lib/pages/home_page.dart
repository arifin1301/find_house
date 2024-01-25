import 'package:find_house/models/city.dart';
import 'package:find_house/models/space.dart';
import 'package:find_house/pages/theme.dart';
import 'package:find_house/widgets/city_card.dart';
import 'package:find_house/widgets/space_card.dart';
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
            // NOTE: TITLE / HEADER =================
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
              // NOTES: POPULER CITIES ===============
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
              ),
              // NOTES : RECOMMED SPACE ===============
              SizedBox(
                height: 30,
              ),
              Text(
                "Recommended Space",
                style: blackTextStyle.copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              SpaceCard(
                Space(
                    id: 1,
                    rating: '4/5',
                    name: 'Kuretakeso Hott',
                    cost: 52,
                    address: 'Bandung, Indonesia',
                    ImageUrl: 'assets/images/space1.png'),
              ),
              SizedBox(
                height: 30,
              ),
              SpaceCard(
                Space(
                    id: 2,
                    rating: '5/5',
                    name: 'Roemah Nenek',
                    cost: 11,
                    address: 'Bogor, Indonesia',
                    ImageUrl: 'assets/images/space2.png'),
              ),
              SizedBox(
                height: 30,
              ),
              SpaceCard(
                Space(
                    id: 3,
                    rating: '3/5',
                    name: 'Darrling How',
                    cost: 20,
                    address: 'Jakarta, Indonesia',
                    ImageUrl: 'assets/images/space3.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

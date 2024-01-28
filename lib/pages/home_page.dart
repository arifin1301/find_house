import 'package:find_house/models/city.dart';
import 'package:find_house/models/space.dart';
import 'package:find_house/models/tips.dart';
import 'package:find_house/pages/theme.dart';
import 'package:find_house/widgets/bottom_navbar_item.dart';
import 'package:find_house/widgets/city_card.dart';
import 'package:find_house/widgets/space_card.dart';
import 'package:find_house/widgets/tips_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
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
              SizedBox(
                height: 30,
              ),
              // TIPS & GUIDANCE =======================
              Text(
                "Tips & Guidance",
                style: blackTextStyle.copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 16,
              ),
              TipsCard(
                Tips(
                    id: 1,
                    ImageUrl: 'assets/images/icon1.png',
                    title: 'City Guidelines',
                    date: 'Updated 20 Apr'),
              ),
              SizedBox(
                height: 18,
              ),
              TipsCard(
                Tips(
                    id: 2,
                    ImageUrl: 'assets/images/icon2.png',
                    title: 'Jakarta Fairship',
                    date: 'Updated 11 Dec'),
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 69,
        width: MediaQuery.of(context).size.width - (2 * 29),
        margin: EdgeInsets.only(left: 24, right: 18),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 232, 232, 232),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              ImageUrl: "assets/images/Icon_home.png",
              isActive: true,
            ),
            BottomNavbarItem(
              ImageUrl: "assets/images/Icon_mail.png",
              isActive: false,
            ),
            BottomNavbarItem(
              ImageUrl: "assets/images/Icon_card.png",
              isActive: false,
            ),
            BottomNavbarItem(
              ImageUrl: "assets/images/Icon_love.png",
              isActive: false,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:find_house/pages/theme.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Image.asset('assets/images/detail_pic.png'),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/images/btn_back.png',
                    height: 40,
                    width: 40,
                  ),
                ),
                Image.asset(
                  'assets/images/btn_wishlist.png',
                  height: 40,
                  width: 40,
                ),
              ],
            ),
          ),
          ListView(
            children: [
              SizedBox(
                height: 370,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                  child: Column(children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kuretakeso Hott',
                              style: blackTextStyle.copyWith(
                                fontSize: 22,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: '\$52',
                                    style: purpleTextStyle.copyWith(
                                      fontSize: 16,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' / Month',
                                    style: greyTextStyle.copyWith(fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/images/star.png',
                          width: 20,
                          height: 20,
                        ),
                        Image.asset(
                          'assets/images/star.png',
                          width: 20,
                          height: 20,
                        ),
                        Image.asset(
                          'assets/images/star.png',
                          width: 20,
                          height: 20,
                        ),
                        Image.asset(
                          'assets/images/star.png',
                          width: 20,
                          height: 20,
                        ),
                        Image.asset(
                          'assets/images/star.png',
                          width: 20,
                          height: 20,
                          color: greyColor,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text(
                          'Main Facilities',
                          style: blackTextStyle.copyWith(fontSize: 16),
                        ),
                      ],
                    )
                  ]),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}

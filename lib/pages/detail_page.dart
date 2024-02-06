import 'package:find_house/pages/theme.dart';
import 'package:find_house/widgets/facilities.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  launchUrl(String url) async {
    if (await canLaunch(url)) {
      launch(url);
    } else {
      throw (url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Image.asset('assets/images/detail_pic.png'),
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                                            style: greyTextStyle.copyWith(
                                                fontSize: 16),
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
                            Text(
                              'Main Facilities',
                              style: blackTextStyle.copyWith(fontSize: 16),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Facalities(
                                  imageUrl: "assets/images/logo_kitchen.png",
                                  name: 'kitchen',
                                  total: 2,
                                ),
                                Facalities(
                                  imageUrl: "assets/images/logo_bedroom.png",
                                  name: 'bedroom',
                                  total: 3,
                                ),
                                Facalities(
                                  imageUrl: "assets/images/logo_cupboard.png",
                                  name: 'Big Lemari',
                                  total: 12,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Photos',
                              style: blackTextStyle.copyWith(fontSize: 16),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              // scrollDirection: Axis.horizontal,
                              children: [
                                Container(
                                  height: 88,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/detail1.png')),
                                      borderRadius: BorderRadius.circular(16)),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Container(
                                  height: 88,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/detail2.png'),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(16)),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Container(
                                  height: 88,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/detail3.png'),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(16)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Location',
                              style: blackTextStyle.copyWith(fontSize: 16),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Jln. Kappan Sukses No. 20',
                                      style:
                                          greyTextStyle.copyWith(fontSize: 14),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      'Palembang',
                                      style:
                                          greyTextStyle.copyWith(fontSize: 14),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                InkWell(
                                  onTap: () {
                                    launchUrl(
                                        'https://maps.app.goo.gl/kq1UsuiWTkcBjhhg9');
                                  },
                                  child: Image.asset(
                                    'assets/images/btn_location.png',
                                    height: 40,
                                    width: 40,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 55,
                              decoration: BoxDecoration(
                                color: purpleColor,
                                borderRadius: BorderRadius.circular(17),
                              ),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: purpleColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(17),
                                      )),
                                  onPressed: () {
                                    launchUrl('https://wa.me/6287860183018');
                                  },
                                  child: Text(
                                    'Book Now',
                                    style:
                                        whiteTextStyle.copyWith(fontSize: 18),
                                  )),
                            )
                          ]),
                    ),
                  )
                ],
              ),
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
            ],
          )),
    );
  }
}

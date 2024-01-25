import 'package:find_house/pages/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset('assets/images/splash_bg.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0, left: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      width: 70,
                      height: 70,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Find Cozy House\nto Stay and Happy",
                      style: blackTextStyle.copyWith(fontSize: 24),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Stop membuang banyak waktu\npada tempat yang tidak habitable",
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 51,
                    ),
                    Container(
                      width: 210,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: purpleColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17),
                            )),
                        child: Text(
                          "Explore Now",
                          style: whiteTextStyle.copyWith(fontSize: 18),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

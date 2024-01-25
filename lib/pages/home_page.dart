import 'package:find_house/pages/theme.dart';
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
              Text("Explore Now", style: blackTextStyle.copyWith(fontSize: 24)),
              SizedBox(
                height: 2,
              ),
              Text(
                "Mencari Kosan yang Cozy",
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Populer Cities',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [Container()],
              )
            ],
          ),
        ),
      ),
    );
  }
}

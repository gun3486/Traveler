import 'package:flutter/material.dart';
import 'package:travel/components/section_title.dart';
import 'package:travel/constants.dart';
import 'package:travel/models/TravelSpot.dart';
import 'package:travel/screens/components/search_field.dart';
import 'package:travel/size_config.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: Column(
        children: [
          HomeHeader(),
          VerticalSpacing(),
          SectionTitle(
            title: "Right Now At Spark",
            press: () {},
          ),
          SizedBox(
            width: getProportionateScreenWidth(137),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1.29,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)
                      ),
                      image: DecorationImage(
                        image: AssetImage(travelSpots[0].image)
                      )
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

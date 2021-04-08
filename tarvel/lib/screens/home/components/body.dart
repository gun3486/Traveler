import 'package:flutter/material.dart';
import 'package:travel/components/section_title.dart';
import 'package:travel/constants.dart';
import 'package:travel/models/TravelSpot.dart';
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
                        image: AssetImage(travelSpots[0].image),
                        fit: BoxFit.cover,
                      )
                    ),
                  ),
                ),
                Container(
                  width: getProportionateScreenWidth(137),
                  padding: EdgeInsets.all(
                    getProportionateScreenWidth(kDefaultPadding),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    boxShadow: [kDefualtShadow],
                  ),
                  child: Column(
                    children: [
                      Text(
                        travelSpots[0].name,
                        style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w600
                        ),
                      ),
                      VerticalSpacing(of: 10),
                      Travelers()
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Travelers extends StatelessWidget {
  const Travelers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int totalUser = 0;
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenWidth(30),
      child: Stack(
        children: [
          ...List.generate(travelSpots[0].users.length,(index) {
              return Positioned(
              left: (22 * index).toDouble(),
              child: buildTravelerFace(index),
            );
         }),
         SizedBox(
          height: getProportionateScreenWidth(27),
          width: getProportionateScreenWidth(27),
          child: FlatButton(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
            color: kPrimaryColor,
             onPressed: () {}, 
             child: Icon(Icons.add
             )
            ),
         )
        ],
      ),
    );
  }

  ClipOval buildTravelerFace(int index) {
    return ClipOval(
         child: Image.asset(
          travelSpots[0].users[index].image,
          height: getProportionateScreenHeight(28),
          width: getProportionateScreenWidth(28),
          fit: BoxFit.cover,
        ),
      );
  }
}

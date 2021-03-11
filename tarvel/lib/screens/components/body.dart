import 'package:flutter/material.dart';
import 'package:travel/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset("assets/images/home_bg.png",
            height: getProportionateScreenWidth(315),
            fit: BoxFit.cover,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: getProportionateScreenHeight(80),),
                Text(
                  "Travelers",
                  style: TextStyle(fontSize: getProportionateScreenWidth(73),
                  fontWeight: FontWeight.bold,
                  color: Colors.tealAccent
                  ),
                ),
                Text(
                  'Travel Community App250',
                  style: TextStyle(color: Colors.white),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
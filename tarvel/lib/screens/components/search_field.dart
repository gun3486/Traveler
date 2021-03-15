import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../size_config.dart';


class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(313),
      height: getProportionateScreenWidth(50),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Color(0xFF3E4067),
        ),
        boxShadow: [kDefualtShadow],
      ),
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
          hintText: "Search your destination...",
          hintStyle: TextStyle(
            fontSize: getProportionateScreenWidth(12),
            color: Color(0xFF464A7E),
          ),
          suffixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(
            horizontal:
              getProportionateScreenWidth(kDefaultPadding),
              vertical: 
                  getProportionateScreenHeight(kDefaultPadding / 2)
            )
        ),
      ),
    );
  }
}
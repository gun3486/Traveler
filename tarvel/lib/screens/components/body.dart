import 'package:flutter/material.dart';
import 'package:travel/constants.dart';
import 'package:travel/screens/components/search_field.dart';
import 'package:travel/size_config.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeHeader(),
        Title(color: null, child: null)
      ],
    );
  }
}


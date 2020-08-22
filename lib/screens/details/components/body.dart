import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/components/image_and_icons.dart';
import 'package:plant_app/screens/details/components/title_and_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
           ImageAndIcons(size: size,),
           TitleAndPrice(
             title: "Angelica",
             country: "Russia",
             price: 440,
           )
        ],
      ),
    );
  }
}

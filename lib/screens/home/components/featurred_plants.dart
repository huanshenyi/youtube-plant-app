/// 商品の横スクロール
/// 2020/8/15

import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class FeaturedPlants extends StatelessWidget {

  const FeaturedPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantCard(
            image: "assetcs/images/bottom_img_1.png",
            press: () {},
          ),
          FeaturePlantCard(
            image: "assetcs/images/bottom_img_2.png",
            press: () {},
          )
        ],
      ),
    );
  }
}



class FeaturePlantCard extends StatelessWidget{

  const FeaturePlantCard({
    Key key, this.image, this.press,
  }): super(key:key);

  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement build
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image),
            )
        ),
      ),
    );
  }
}
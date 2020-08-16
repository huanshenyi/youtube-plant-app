import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key key,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(
          left: kDefaultPadding * 2,
          right: kDefaultPadding * 2,
          bottom: 10
      ),
      height: 70,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(offset: Offset(0, 10),
              blurRadius: 35,
              color: kPrimaryColor.withOpacity(0.38),
            )
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              icon: SvgPicture.asset("assetcs/icons/flower.svg"),
              onPressed: (){}
          ),
          IconButton(
              icon: SvgPicture.asset("assetcs/icons/heart-icon.svg"),
              onPressed: (){}
          ),
          IconButton(
              icon: SvgPicture.asset("assetcs/icons/user-icon.svg"),
              onPressed: (){}
          ),
        ],
      ),
    );
  }
}
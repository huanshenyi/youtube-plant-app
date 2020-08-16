import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/components/my_bottom_nav_bar.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(), //下のナビゲーションバーを追加。
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0, //appbarのシャドウ
      leading: IconButton(
          icon: SvgPicture.asset("assetcs/icons/menu.svg"), onPressed: () {}),
    );
  }
}


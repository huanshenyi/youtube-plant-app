import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/components/icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key key,
    @required this.size,
  }):super(key:key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(//これがあるから画像が右へ寄せた
                child:Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: kDefaultPadding * 3
                  ),
                  child:  Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          icon: SvgPicture.asset("assetcs/icons/back_arrow.svg"),
                          onPressed: (){
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Spacer(),
                      IconCard(icon: "assetcs/icons/sun.svg",),
                      IconCard(icon: "assetcs/icons/icon_2.svg",),
                      IconCard(icon: "assetcs/icons/icon_3.svg",),
                      IconCard(icon: "assetcs/icons/icon_4.svg",),
                    ],
                  ),
                )
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(63),
                      bottomLeft: Radius.circular(63)
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 60,
                        color: kPrimaryColor.withOpacity(0.29)
                    )
                  ],
                  image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.cover,
                      image: AssetImage("assetcs/images/img.png")
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
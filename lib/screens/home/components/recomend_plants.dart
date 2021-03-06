import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/details_screen.dart';

class RecomendsPlants extends StatelessWidget {

  const RecomendsPlants({
    Key key,
  }): super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView( //スクロール可能にする
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCard(
            image: "assetcs/images/image_1.png",
            title: "Samantha",
            country: "Russia",
            press: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsScreen(),
                  )
              );
            },
            price: 440,
          ),
          RecomendPlantCard(
            image: "assetcs/images/image_2.png",
            title: "Samantha",
            country: "Russia",
            press: (){},
            price: 440,
          ),
          RecomendPlantCard(
            image: "assetcs/images/image_3.png",
            title: "Samantha",
            country: "Russia",
            press: (){},
            price: 440,
          )
        ],
      ),
    );
  }

}

class RecomendPlantCard extends StatelessWidget {

  const RecomendPlantCard({
    Key key, this.image, this.title, this.country, this.price, this.press,
  }): super(key:key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding/2,
          bottom: kDefaultPadding * 2.5
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container( // 白い商品名と値段書いてる所
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  )
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text("\$$price", style: Theme.of(context)
                      .textTheme
                      .button.copyWith(color: kPrimaryColor),)
                ],
              ),
            ),
          )
        ]
        ,),
    );
  }
}
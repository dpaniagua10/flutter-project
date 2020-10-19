import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg';
import 'package:first_app/constants.dart';
import 'package:first_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            // By default our  icon color is white
            color: kTexColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.shopping_cart,
            // By default our  icon color is white
            color: kTexColor,
          ),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}

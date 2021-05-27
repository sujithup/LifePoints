import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:lifepoints/components/carousel.dart';
import 'package:lifepoints/components/statusbar.dart';
import 'package:lifepoints/pages/barcode.dart';
import 'package:lifepoints/pages/cart.dart';
import 'package:lifepoints/pages/login.dart';
import 'package:lifepoints/pages/reward.dart';
import 'package:lifepoints/pages/splashscreen.dart';

/// This Widget is the main application widget.
class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      body: new SingleChildScrollView(
          child: Column(
        children: <Widget>[
          StatusBar(),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 30, bottom: 30, left: 30),
            child: Text("NEWS", style: TextStyle(color: Colors.white)),
          ),
          Carousel(),
        ],
      )),
      bottomNavigationBar: Container(
        color: Color.fromRGBO(0, 0, 31, 10),
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        height: 80,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: ImageIcon(AssetImage("assets/images/icon1.png"),
                    color: Colors.blue),
              ),
              IconButton(
                icon: ImageIcon(
                  AssetImage(
                    "assets/images/barcode.png",
                  ),
                  color: Color.fromRGBO(204, 204, 204, 100),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Barcode()),
                  );
                },
              ),
              IconButton(
                icon: ImageIcon(
                  AssetImage(
                    "assets/images/trophy.png",
                  ),
                  color: Color.fromRGBO(204, 204, 204, 100),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Reward()),
                  );
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Color.fromRGBO(204, 204, 204, 100),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Cart()),
                  );
                },
              ),
            ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lifepoints/components/statusbar.dart';
import 'package:lifepoints/pages/cart.dart';
import 'package:lifepoints/pages/home.dart';
import 'package:lifepoints/pages/reward.dart';

class Barcode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: new SingleChildScrollView(
          child: Column(
            children: <Widget>[
              StatusBar(),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 30, bottom: 30, left: 30),
                child: Text("DIGITAL MEMBER CARD", style: TextStyle(color: Colors.white)),
              ),
              Container(
                margin: EdgeInsets.all(30),
                child: Center(
                  child: Image.asset(
                    "assets/images/qr.png",
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
              )
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
                    color: Color.fromRGBO(204, 204, 204, 100)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
              ),
              IconButton(
                icon: ImageIcon(
                  AssetImage(
                    "assets/images/barcode.png",
                  ),
                  color:Colors.blue,
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lifepoints/components/statusbar.dart';
import 'package:lifepoints/pages/barcode.dart';
import 'package:lifepoints/pages/home.dart';
import 'package:lifepoints/pages/reward.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: new SingleChildScrollView(
          child: Column(
            children: <Widget>[
              StatusBar(),

              GestureDetector(
                onTap: (){
                  _openPopup(context);
                  print("done");
                },
                child: Container(
                  child: Center(
                    child: Image.asset(
                      "assets/images/cart.png",
                      // fit: BoxFit.cover,
                      // alignment: Alignment.center,
                    ),
                  ),
                )
              )],
              )
              ),

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
                  color: Colors.blue,
                ),
              ),
            ]),
      ),
    );
  }

  var alertStyle = AlertStyle(
    backgroundColor: const Color.fromRGBO(0, 0, 31, 10),
    alertBorder: null,
    titleStyle: TextStyle(
      color: const Color.fromRGBO(0, 0, 31, 10),
    ),
  );

  void _openPopup(BuildContext context) {
    Alert(
        style: alertStyle,
        context: context,
        title: "Reward",
        content: Column(
        children: <Widget>[
           Text("Adidas", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
          Padding(padding: EdgeInsets.only(top: 30)),
          Text("Get 10% off on all adidas products. Shop now!",style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.w100) ),
          Padding(padding: EdgeInsets.only(top: 30)),
        ]
        )
    ).show();
  }
}

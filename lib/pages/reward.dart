import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lifepoints/components/statusbar.dart';
import 'package:lifepoints/pages/home.dart';

import 'barcode.dart';
import 'cart.dart';

class Reward extends StatelessWidget {
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
            child: Text("RANKING", style: TextStyle(color: Colors.white)),
          ),
          Container(
            width: 309,
            height: 391,
            margin: EdgeInsets.all(1),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: ClipOval(
                    child: Image.asset(
                      "assets/images/man.png",
                    ),
                  ),
                  title: Text(
                    "Henry Ramareiz",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text("# 17780",style: TextStyle(
                    color: Colors.blueGrey,
                  ),),
                  trailing: Image.asset(
                    "assets/images/logo.png",
                  ),
                ),

                Divider(
                  color: Colors.blueGrey,
                ),

                ListTile(
                  leading: Icon(Icons.supervised_user_circle, color: Colors.blueGrey, size: 60),
                  title: Text(
                    "Kara Cloutlier",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text("# 15880",style: TextStyle(
                    color: Colors.blueGrey,
                  ),),
                  trailing: Image.asset(
                    "assets/images/logo.png",
                  ),
                ),

                Divider(
                  color: Colors.blueGrey,
                ),

                ListTile(
                  leading: Icon(Icons.supervised_user_circle_outlined, color: Colors.grey, size: 60),
                  title: Text(
                    "Carl Johnson",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text("# 13330",style: TextStyle(
                    color: Colors.blueGrey,
                  ),),
                  trailing: Image.asset(
                    "assets/images/logo.png",
                  ),
                ),

              ],
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
                  color: Colors.blue,
                ),
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

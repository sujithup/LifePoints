import 'package:flutter/material.dart';
import 'package:lifepoints/pages/reward.dart';
import 'package:sizer/sizer.dart';

import 'barcode.dart';
import 'cart.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Center(
                  child: Container(
                margin: EdgeInsets.only(top: 30, bottom: 20),
                child: ClipOval(
                  child: Image.asset(
                    "assets/images/man.png",
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
              )),
              Text(
                "David Walberg",
                style: TextStyle(color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 30, top: 40, right: 10),
                    height: 15.h,
                    width: 15.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/logo.png",
                        height: 500,
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 30, top: 40, right: 10),
                      height: 15.h,
                      width: 15.h,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blueGrey,
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                          child: Text(
                        "40",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 25),
                        textAlign: TextAlign.center,
                      )))
                ],
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 20, right: 50),
                      child: Text("LEVEL",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 45, top: 20, right: 10),
                      padding: EdgeInsets.only(left: 30),
                      child: Text("POINTS",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    )
                    ]
              ),


              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(left: 30, top: 30, right: 10),
                        height: 15.h,
                        width: 15.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blueGrey,
                            width: 4,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                            child: Text(
                          "400",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 25),
                          textAlign: TextAlign.center,
                        ))),
                    Container(
                        margin: EdgeInsets.only(left: 30, top: 30, right: 10),
                        height: 15.h,
                        width: 15.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blueGrey,
                            width: 4,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                            child: Text(
                          "50",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 25),
                          textAlign: TextAlign.center,
                        )))
                  ]),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 30, top: 20, right: 10,bottom: 30),
                          child: Text("MONTHLY RANKING",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 45, top: 20,bottom: 30),
                          child: Text("YEARLY RANKING",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ]
                  ),
            ])
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

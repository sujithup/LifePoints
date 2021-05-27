import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lifepoints/pages/profile.dart';
import 'package:sizer/sizer.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class StatusBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  stops: [0.1, 1],
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(29, 28, 61, 100),
                    Color.fromRGBO(59, 53, 117, 100)
                  ])),
          height: 140,
          width: double.infinity,
        ),
        Row(children: <Widget>[
          Container(
            height: 10.h,
            margin: EdgeInsets.only(left: 15, top: 40, right: 10),
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
              child: ClipOval(
                child: Image.asset(
                  "assets/images/man.png",
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 40, left: 10, right: 20),
              child: Text("DavidW", style: TextStyle(color: Colors.white))),
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          Column(children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 30, top: 50, right: 10),
              alignment: Alignment.bottomRight,
              child: Center(
                  child: Text("Points",
                      style: TextStyle(color: CupertinoColors.white))),
            ),
            Container(
              margin: EdgeInsets.only(left: 30,top: 5, right: 10),
              child: Center(
                  child: Text(
                    "40",
                    style: TextStyle(
                        color: CupertinoColors.white, fontWeight: FontWeight.bold),
                  )),
            ),
          ]),
          Container(
            margin: EdgeInsets.only(left: 10, top: 50, right: 10),
            height: 7.h,
            width: 7.h,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 4,
              ),
              borderRadius: BorderRadius.circular(100),
            ),
              child: GestureDetector(
                onTap: (){
                  _openPopup(context);
                },
                child: ClipOval(
                  child: Image.asset(
                    "assets/images/logo.png",
                    height: 500,
                  ),
                ),
              ),  )
        ])
      ],
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

            ListTile(
              leading: Image.asset(
                "assets/images/logo.png",
              ),
              title: Text("HI",style: TextStyle(color: const Color.fromRGBO(0, 0, 31, 10),),),
              trailing: Container(
                padding: EdgeInsets.only(top:12),
                child: Column(
                    children: <Widget>[
                      Text(
                        "100",
                        style: TextStyle(
                            color: CupertinoColors.white, fontWeight: FontWeight.bold),
                      ),
                      Text("Points",
                          style: TextStyle(color: CupertinoColors.white))
                    ]
                )
              )
            ),
            Text("Lorem ipsum dolor sit amet, consectetur  et dolore magna aliqua.",style: TextStyle(color: Colors.white70, fontSize: 10),),
            Divider(
                color: Colors.blueGrey,

            ),

            ListTile(
                leading: Image.asset(
                  "assets/images/logo.png",
                ),
                title: Text("HI",style: TextStyle(color: const Color.fromRGBO(0, 0, 31, 10),),),
                trailing: Container(
                    padding: EdgeInsets.only(top:12),
                    child: Column(
                        children: <Widget>[
                          Text(
                            "1000",
                            style: TextStyle(
                                color: CupertinoColors.white, fontWeight: FontWeight.bold),
                          ),
                          Text("Points",
                              style: TextStyle(color: CupertinoColors.white))
                        ]
                    )
                )
            ),
            Text("Lorem ipsum dolor sit amet, consectetur  et dolore magna aliqua.",style: TextStyle(color: Colors.white70, fontSize: 10),),
            Divider(
              color: Colors.blueGrey,
            ),

            ListTile(
                leading: Image.asset(
                  "assets/images/logo.png",
                ),
                title: Text("HI",style: TextStyle(color: const Color.fromRGBO(0, 0, 31, 10),),),
                trailing: Container(
                    padding: EdgeInsets.only(top:12),
                    child: Column(
                        children: <Widget>[
                          Text(
                            "10K",
                            style: TextStyle(
                                color: CupertinoColors.white, fontWeight: FontWeight.bold),
                          ),
                          Text("Points",
                              style: TextStyle(color: CupertinoColors.white))
                        ]
                    )
                )
            ),
            Text("Lorem ipsum dolor sit amet, consectetur  et dolore magna aliqua.",style: TextStyle(color: Colors.white70, fontSize: 10),),
            Divider(
              color: Colors.blueGrey,
            ),

          ],
        ),
        ).show();
  }
}

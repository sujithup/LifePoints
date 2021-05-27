import 'package:flutter/material.dart';
import 'package:lifepoints/pages/login.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Color.fromRGBO(0,0,31,10),
          child: Stack(
            children: <Widget>[
              // ignore: deprecated_member_use
              Center(
                child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    padding: EdgeInsets.all(0.0),
                    child: Image.asset('assets/images/logo.png')),
              ),
              Container(
                margin: EdgeInsets.only(top:30, bottom: 30),
                alignment: Alignment.bottomCenter,
                child: Text("Tap anywhere to continue!", style: TextStyle(color: Colors.blueGrey, fontSize: 18,fontWeight: FontWeight.w100)),
              )
            ],

          )
    ),

    );
  }
}

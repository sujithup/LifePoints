import 'package:flutter/material.dart';
import 'package:lifepoints/pages/home.dart';

class Login extends StatelessWidget {
  final nameController = TextEditingController();
  final pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
              child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 260,
            child: Image.asset("assets/images/logo.png"),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30, top: 20),
            child: TextField(
              controller: nameController,
              style: TextStyle(color: Colors.white, fontSize: 18),
              decoration: InputDecoration(
                  labelText: 'NAME',
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                  enabled: true,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue))),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 30, right: 30, top: 20),
            child: TextField(
              controller: pwdController,
              style: TextStyle(color: Colors.white, fontSize: 18),
              decoration: InputDecoration(
                  labelText: 'PASSWORD',
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 18),
                  enabled: true,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue))),
              obscureText: true,
            ),
          ),
          SizedBox(height: 45.0),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 30, right: 30, top: 20),
            height: 40.0,
            child: Material(
              borderRadius: BorderRadius.circular(20.0),
              shadowColor: Colors.blueAccent,
              color: Colors.blue,
              elevation: 15.0,
              child: MaterialButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },

                child: Center(
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat'),
                  ),
                ),
              ),
            ),
          ),
                  SizedBox(height: 20.0),
        ],
      ))),
    );
  }
}

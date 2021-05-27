import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Shoepress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Container(
            width: 100.w,
            height: 100.h,
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
            alignment: Alignment.topCenter,
            child: Image.asset('assets/images/shoepress.png')
        ),
      ),
    );
  }
}

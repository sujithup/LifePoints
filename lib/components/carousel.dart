import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:lifepoints/pages/shoepress.dart';
import 'package:sizer/sizer.dart';

class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    int _current = 0;
    List imgList = [
      'assets/images/nike.png',
      'assets/images/shoe.png',
    ];
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Shoepress()),
        );
      },
      child: Container(
          width: 140.w,
          child: Column(
              children: <Widget>[
                CarouselSlider(

                  height: 50.h,
                  initialPage: 0,
                  enlargeCenterPage: true,
                  autoPlay: false,
                  reverse: false,
                  enableInfiniteScroll: true,

                  onPageChanged: (index) {
                    setState(() {
                      _current = index;
                    });
                  },
                  items: imgList.map((imgUrl) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue.withOpacity(0.2),
                                offset: Offset(-5, -1),
                                blurRadius: 16.0,
                              ),
                              BoxShadow(
                                color: Colors.white.withOpacity(0.1),
                                offset: Offset(10.5, 10.5),
                                blurRadius: 13.0,
                              ),
                            ],
                            color: Colors.green,
                          ),
                          child: Image.asset(
                            imgUrl,
                            fit: BoxFit.fill,
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ]
          )
    )
    );
  }
}


import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouseClass extends StatefulWidget {
  @override
  _CarouseClassState createState() => _CarouseClassState();
}

class _CarouseClassState extends State<CarouseClass> {
  final List imgList = [
    "assets/images/g5.jpg",
    "assets/images/g1.jpg",
     "assets/images/g3.jpg"
  ];

  int imgIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 337,
      height: 270,
      margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 10),
              enlargeCenterPage: true,
                height: 270.0,
                onPageChanged: (int j, CarouselPageChangedReason re) {
                  setState(() {
                    if (imgIndex < imgList.length - 1) {
                      imgIndex++;
                    } else {
                      imgIndex = 0;
                    }
                  });
                }),
            items: imgList.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 2, 0),
                    constraints: BoxConstraints.expand(height: 270),
                    child: Image.asset(
                      imgList[imgIndex],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}

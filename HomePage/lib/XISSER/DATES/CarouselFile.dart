import 'package:HomePage/XISSER/COMPONENTS/imageContant.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class CarouseClass extends StatefulWidget {
  @override
  _CarouseClassState createState() => _CarouseClassState();
}

class _CarouseClassState extends State<CarouseClass> {
  final List imgList = [
    "assets/images/g1.jpg",
    "assets/images/g5.jpg",
    "assets/images/g3.jpg"
  ];
  final List detailList = [
    "Babra - 21yrs\n Lives\: Dar Es Salaam\, Kimara",
    "Lizy - 22yrs\n Lives\: Arusha\, Usa River",
    "Neema - 20yrs\n Lives\: Mwanza\, Geita",
  ];
  int imgIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 337,
      height: 500,
      margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                // autoPlay: true,
                //autoPlayInterval: Duration(seconds: 10),
                enlargeCenterPage: true,
                height: 400.0,
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
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: SubImageContant(
              detailList[imgIndex],
            ),
          )
        ],
      ),
    );
  }
}

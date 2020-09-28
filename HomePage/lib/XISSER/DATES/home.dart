import 'package:HomePage/XISSER/COMPONENTS/ButtonClass.dart';
import 'package:HomePage/XISSER/COMPONENTS/text.dart';
import 'package:HomePage/XISSER/DATES/CarouselFile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: TextClass("Find Your Date"),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 10, 20, 5),
            child: CarouseClass(),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom: 10, top: 0),
            padding: EdgeInsets.fromLTRB(55, 5, 55, 5),
            child: ButtonClass(
              "Request",
              1,
            ),
          )
        ],
      ),
    );
  }
}

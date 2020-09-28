
import 'package:HomePage/XISSER/COMPONENTS/ButtonClass.dart';
import 'package:HomePage/XISSER/COMPONENTS/imageContant.dart';
import 'package:HomePage/XISSER/COMPONENTS/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlanDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: TextClass("Plan A Date With Babra"),
          ),
          Container(
            width: double.infinity,
            height: 400,
            margin: EdgeInsets.fromLTRB(30, 5, 30, 10),
          child: ImageContainerClass("assets/images/g5.jpg"),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 247),
                child: TextClass2("Sugest a Place"),
                ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    height: 120.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                   PlacesClass(Colors.red),
                        PlacesClass(Colors.black12),
                        PlacesClass(Colors.teal),
                        PlacesClass(Colors.green)
                  ],
                ),
                  ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                child: ButtonClass("Continue",3),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

// ignore: camel_case_types, must_be_immutable
class PlacesClass extends StatelessWidget {
  var colorInit;
  PlacesClass(this.colorInit);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5),
      width: 150,
      color: colorInit,
    );
  }
}


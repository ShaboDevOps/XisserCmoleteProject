
import 'package:HomePage/XISSER/COMPONENTS/ButtonClass.dart';
import 'package:HomePage/XISSER/COMPONENTS/imageContant.dart';
import 'package:HomePage/XISSER/COMPONENTS/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: TextClass("Request Sent"),
          ),
          Container(
            width: double.infinity,
            height: 450,
            child: ImageContainerClass("assets/images/g5.jpg"),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(45, 16, 90, 0),
            child: Text(
              "Your Date request was sent to Babra at Kilimanjaro peak.",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Colors.black26),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: ButtonClass("Find More", 34),
          ),
        ],
      ),
    );
  }
}

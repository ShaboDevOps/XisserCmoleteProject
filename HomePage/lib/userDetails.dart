import 'package:HomePage/ButtonClass.dart';
import 'package:HomePage/text.dart';
import 'package:flutter/material.dart';
import 'package:HomePage/imageContant.dart';

class UserDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: TextClass("Babra Details"),
          ),
          ImageContainerClass("assets/images/g5.jpg"),
          Container(
            child: Column(
              children: [
                TextClass2("BIO"),
                TextClass2("Like"),
                TextClass2("Birth day"),
                ButtonClass(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

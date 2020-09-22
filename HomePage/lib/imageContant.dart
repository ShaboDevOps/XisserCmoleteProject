import 'dart:ui';

import 'package:flutter/material.dart';

class ImageContainerClass extends StatelessWidget {
  String __assetPath1;

  ImageContainerClass(this.__assetPath1);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 337,
      height: 350,
      color: Colors.green[100],
      margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
      constraints: BoxConstraints.expand(height: 270),
      child: Image.asset(
        __assetPath1,
        fit: BoxFit.cover,
      ),
    );
  }
}

class SubImageContant extends StatelessWidget {
  SubImageContant();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 337,
      height: 50,
      padding: EdgeInsets.all(5),
      color: Colors.black38,
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Text(
        "Babra - 23yrs\nDar Es Salaam",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400,fontSize: 15),
      ),
    );
  }
}

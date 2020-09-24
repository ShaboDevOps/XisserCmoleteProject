import 'package:flutter/material.dart';
import 'package:HomePage/text.dart';
import 'package:HomePage/ButtonClass.dart';
import 'package:HomePage/CarouselFile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: TextClass("Find Your Date"),
          ),
          CarouseClass(),
          ButtonClass("Request",1),
        ],
      ),
    );
  }
}

import 'package:HomePage/ButtonClass.dart';
import 'package:HomePage/imageContant.dart';
import 'package:HomePage/text.dart';
import 'package:flutter/cupertino.dart';

class SentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: TextClass("Request Sent"),
          ),
          ImageContainerClass("assets/images/g5.jpg"),
          ButtonClass("Find More", 34),
        ],
      ),
    );
  }
}

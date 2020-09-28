import 'package:HomePage/XISSER/REGISTRATION/mDetails.dart';
import 'package:flutter/material.dart';


class ButtonClass extends StatelessWidget {
  String buttonText;
  int pageNo;

  ButtonClass(this.buttonText, this.pageNo);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      height: 35,
      decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.all(Radius.circular(30))),
      margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
      child: RaisedButton(
        color: Colors.deepPurple,
        child: Text(
          buttonText,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w900, fontSize: 20),
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MyDetails(pageNo)));
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:HomePage/home.dart';

class ButtonClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 35,
      decoration: BoxDecoration(
         color:  Colors.purple[300],
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
      child: RaisedButton(
        color: const Color(0x6912C0),
          child: Text(
            "Request",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w900, fontSize: 20),
          ),
          onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
          },
          ),
    );
  }
}


import 'package:HomePage/XISSER/COMPONENTS/ButtonClass.dart';
import 'package:HomePage/XISSER/COMPONENTS/imageContant.dart';
import 'package:HomePage/XISSER/COMPONENTS/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: TextClass("Babra Details"),
          ),
          Container(
            width: double.infinity,
            height: 400,
            margin: EdgeInsets.fromLTRB(30, 5, 30, 10),
            child: ImageContainerClass("assets/images/g5.jpg"),
          ),
          Container(
            //alignment: Alignment.center,
            // padding: EdgeInsets.fromLTRB(2, 5, 30, 10),
            // margin: EdgeInsets.fromLTRB(5, 5, 150, 10),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(33, 5, 0, 10),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 325),
                        child: TextClass2("Bio"),
                      ),
                      Container(
                        child: Text(
                          'Hello there I\'m Dianah Joseph am new here Looking for a date.',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w400),
                        ),
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(left: 45, right: 45),
                        //margin: EdgeInsets.fromLTRB(3, 5, 0, 5),
                        color: Colors.black12,
                      )
                    ],
                  ),
                ),
                Column(children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 5, 285, 5),
                    child: TextClass2("Likes"),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 90),
                      height: 50,
                      padding: EdgeInsets.only(left: 70),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          LikesClass("Football"),
                          LikesClass("Richard"),
                          LikesClass("Chatting"),
                          LikesClass("Tik-Tok"),
                        ],
                      ))
                ]),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 10, 200, 5),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 80),
                        child: TextClass2("BirthDay"),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 10, top: 5),
                          child: LikesClass('july 18 1997'))
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            alignment: Alignment.center,
            child: ButtonClass("Request", 2),
          )
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class LikesClass extends StatelessWidget {
  String nameText;

  LikesClass(this.nameText);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
          nameText,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
        ),
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(left: 5, right: 5),
        color: Colors.black12);
  }
}

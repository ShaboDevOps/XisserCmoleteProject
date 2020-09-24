import 'package:flutter/material.dart';

class TextClass extends StatelessWidget {
  final String usedText;
  TextClass(this.usedText);

  @override
  Widget build(BuildContext context) {
    return Text(
      usedText,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
class TextClass2 extends StatelessWidget {
  final String usedText;
  TextClass2(this.usedText);

  @override
  Widget build(BuildContext context) {
    return Text(
      usedText,
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

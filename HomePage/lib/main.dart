
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'XISSER/REGISTRATION/login.dart';

main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

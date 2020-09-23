import 'package:flutter/material.dart';
import 'package:HomePage/drawer.dart';
import 'package:HomePage/text.dart';
import 'package:HomePage/imageContant.dart';
import 'package:HomePage/ButtonClass.dart';
import 'package:HomePage/BottomNavBarClass.dart';
import 'package:HomePage/CarouselFile.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white12,
          title: Center(child: Text("Xisser")),
        ),
        drawer: Drawer(child: DrawerClass()),
        body: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(16, 16, 0, 0),
                child: TextClass(),
              ),
              CarouseClass(),
              SubImageContant(),
              ButtonClass(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBarClass(),
      ),
    );
  }
}

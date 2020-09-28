import 'package:HomePage/XISSER/COMPONENTS/drawer.dart';
import 'package:HomePage/XISSER/DATES/dateRequest.dart';
import 'package:HomePage/XISSER/DATES/home.dart';
import 'package:HomePage/XISSER/REGISTRATION/profile.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppFrameWork extends StatefulWidget {
  int index = 0;

  AppFrameWork(this.index);

  @override
  _AppFrameWorkState createState() => _AppFrameWorkState();
}

class _AppFrameWorkState extends State<AppFrameWork> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    HomePage(),
    DateRequest(),
    Profile(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
          ),
          drawer: Drawer(child: DrawerClass()),
          body: _children[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.teal,
              onTap: onTabTapped,
              currentIndex: _currentIndex,
              items: [
                BottomNavigationBarItem(
                  icon: new Icon(Icons.home),
                  title: Text("Home"),
                ),
                BottomNavigationBarItem(
                  icon: new Icon(Icons.notifications),
                  title: Text("Request"),
                ),
                BottomNavigationBarItem(
                  icon: new Icon(Icons.account_circle),
                  title: Text("Profile"),
                )
              ]),
        ));
  }
}

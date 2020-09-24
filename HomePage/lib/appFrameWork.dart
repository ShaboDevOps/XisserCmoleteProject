import 'package:HomePage/dateRequest.dart';
import 'package:HomePage/drawer.dart';
import 'package:HomePage/home.dart';
import 'package:HomePage/profile.dart';
import 'package:HomePage/userDetails.dart';
import 'package:flutter/material.dart';

class AppFrameWork extends StatefulWidget {

  int index = 0;
  AppFrameWork(this.index);
  @override
  _AppFrameWorkState createState() => _AppFrameWorkState();
}

class _AppFrameWorkState extends State<AppFrameWork> {
  int _currentIndex =0;
  
  final List<Widget> _children = [HomePage(), DateRequest(), Profile(),UserDetail()];

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
        backgroundColor: Colors.white12,
        title: Center(child: Text("Xisser")),
      ),
      drawer: Drawer(child: DrawerClass()),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
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

import 'package:HomePage/home.dart';
import 'package:HomePage/profile.dart';
import 'package:HomePage/userDetails.dart';
import 'package:flutter/material.dart';

class BottomNavBarClass extends StatefulWidget {
  @override
  _BottomNavBarClassState createState() => _BottomNavBarClassState();
}

class _BottomNavBarClassState extends State<BottomNavBarClass> {
  int _currentIndex = 0;
  final List<Widget> _children = [HomePage(),UserDetail(),Profile()];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}

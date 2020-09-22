
import 'package:flutter/material.dart';

class BottomNavBarClass extends StatefulWidget {
  @override
  _BottomNavBarClassState createState() => _BottomNavBarClassState();
}

class _BottomNavBarClassState extends State<BottomNavBarClass> {
  @override
  Widget build(BuildContext context) {
    
    return BottomNavigationBar(items: [
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
    ]);
  }
}
import 'package:HomePage/dateRequest.dart';
import 'package:HomePage/drawer.dart';
import 'package:HomePage/home.dart';
import 'package:HomePage/main.dart';
import 'package:HomePage/planeDate.dart';
import 'package:HomePage/profile.dart';
import 'package:HomePage/sentPage.dart';
import 'package:HomePage/userDetails.dart';
import 'package:flutter/material.dart';

class MyDetails extends StatefulWidget {
     int indexNo;
     MyDetails(this.indexNo);
  @override
  _MyDetailsState createState() => _MyDetailsState(indexNo);
}

class _MyDetailsState extends State<MyDetails> {
  
   int _currentIndex = 0;
   int exNo;
  _MyDetailsState(this.exNo);
  final List<Widget> _children = [HomePage(), DateRequest(), Profile()];

  void onTabTapped(int index) {
    setState(() {
      print(index);
      _currentIndex = index;
    });
  }

   Widget chooseBody(int num) {
      print(num);
      if(num == 1 && !((_currentIndex==1)|(_currentIndex ==2 ))){
        num = 0;
        return UserDetail();
      }
      else if(num == 2 && !((_currentIndex==1)|(_currentIndex ==2 ))){
        return PlanDate();
      }
       else if(num == 3 && !((_currentIndex==1)|(_currentIndex ==2 ))){
        return SentPage();
      }

       else if(num == 4 && !((_currentIndex==1)|(_currentIndex ==2 ))){
        return Home();
      }
      else {
        return _children[_currentIndex];
      }
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
      
      body: chooseBody(exNo),
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


 
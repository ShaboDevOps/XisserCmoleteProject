import 'package:flutter/material.dart';

import 'text.dart';
import 'text.dart';

class DrawerClass extends StatelessWidget {
  DrawerClass();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: const <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text(
            'Richard James',
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          accountEmail: Text(
            'richardjb631@gmail.com',
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          currentAccountPicture: CircleAvatar(
            child: Text('R'),
            backgroundColor: Colors.green,
          ),
        ),
        ListTile(
          trailing: Icon(Icons.arrow_forward),
          title: Text('About Us'),
        ),
        ListTile(
          trailing: Icon(Icons.settings),
          title: Text('Settings'),
        ),
        ListTile(
          trailing: Icon(Icons.phone),
          title: Text('Contacts & Support'),
        ),
        ListTile(
          title: Text('terms & Conditions'),
          trailing: Icon(Icons.add_alert),
        )
      ],
    );
  }
}

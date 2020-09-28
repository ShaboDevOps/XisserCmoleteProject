
import 'package:HomePage/XISSER/REGISTRATION/userProfile.dart';
import 'package:flutter/material.dart';
 

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Text(
                "Register",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontStyle: FontStyle.normal),
                textAlign: TextAlign.end,
              ),
            ),
            TextFormField(
                keyboardType: TextInputType
                    .emailAddress, // Use email input type for emails.
                decoration: new InputDecoration(
                    hintText: 'you@example.com', labelText: 'E-mail Address')),
            new TextFormField(
                obscureText: true, // Use secure text for passwords.
                decoration: new InputDecoration(
                    hintText: 'Password', labelText: 'Enter your password')),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlatButton(
                  child: Text(
                    "continue",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                   onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserProfile()),
                    );
                  },
                ),
              ],
            ),
          ]),
        ));
  }
}

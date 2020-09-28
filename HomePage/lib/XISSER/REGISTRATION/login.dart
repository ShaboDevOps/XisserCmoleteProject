

import 'package:HomePage/XISSER/COMPONENTS/appFrameWork.dart';
import 'package:HomePage/XISSER/REGISTRATION/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                "Login",
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
                    hintText: 'email', labelText: 'E-mail ')),
            new TextFormField(
                obscureText: true, // Use secure text for passwords.
                decoration: new InputDecoration(
                    hintText: 'Password', labelText: 'password')),
            Row(
              children: [
                FlatButton(
                  onPressed: null,
                  child: Text("Reset Password"),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(95, 0, 0, 0),
                  //alignment: Alignment.centerRight,
                  child: FlatButton(
                    child: Text(
                      "continue",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AppFrameWork(0)),
                      );
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text("don't have an account?"),
                FlatButton(
                  child: Text(
                    "Register here",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

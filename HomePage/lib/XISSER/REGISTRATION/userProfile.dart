import 'dart:io';


import 'package:HomePage/XISSER/COMPONENTS/drawer.dart';
import 'package:HomePage/XISSER/COMPONENTS/image.dart';
import 'package:flutter/material.dart';


class UserProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _UserProfileState();
  }
}

class _UserProfileState extends State<UserProfile> {
  bool pressAttention = false;
  bool pressAttention1 = false;
  bool pressAttention2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        iconTheme: new IconThemeData(color: Colors.black),
      ),
      drawer: DrawerClass(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Align(
                    //color: Colors.green,
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Text(
                        "Pictures",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            fontStyle: FontStyle.normal),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                  //scrolling pics
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    height: 200.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        ButtonClass(),
                        SizedBox(
                          width: 5,
                        ),
                        ButtonClass(),
                        SizedBox(
                          width: 5,
                        ),
                        ButtonClass(),
                        SizedBox(
                          width: 10,
                        ),
                        ButtonClass(),
                      ],
                    ),
                  ),
                  //about
                  Align(
                    //color: Colors.green,
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Text(
                        "About You",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            fontStyle: FontStyle.normal),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                  //name
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          TextFormField(
                              keyboardType: TextInputType
                                  .name, // Use email input type for emails.
                              decoration: new InputDecoration(
                                  hintText: 'Full Name',
                                  labelText: 'Full Name ')),
                          TextFormField(
                              keyboardType: TextInputType
                                  .text, // Use email input type for emails.
                              decoration: new InputDecoration(
                                  hintText: 'Bio', labelText: 'Bio ')),
                          TextFormField(
                              keyboardType: TextInputType
                                  .text, // Use email input type for emails.
                              decoration: new InputDecoration(
                                  hintText: 'Birth Date',
                                  labelText: 'Birth Date ')),
                          TextFormField(
                              keyboardType: TextInputType
                                  .text, // Use email input type for emails.
                              decoration: new InputDecoration(
                                  hintText: 'Gender', labelText: 'Gender ')),
                          Row(children: [
                            LikeSelection("Football"),
                            LikeSelection("Gaming"),
                             LikeSelection("Swimming"),
                          ])
                        ],
                      ))
                
                ],
              ),
            ),

          );
        },
      ),
    );
  }
}

class LikeSelection extends StatefulWidget {
  String liketext;
  LikeSelection(this.liketext);
  @override
  LikeSelectionState createState() => LikeSelectionState(liketext);
}

class LikeSelectionState extends State<LikeSelection> {
  var likeText;
  LikeSelectionState(this.likeText);
  bool pressAttention = false;
  bool pressAttention1 = false;
  bool pressAttention2 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left:20, right:10, top: 20),
      child: RaisedButton(
        color: pressAttention2 ? Colors.grey : Colors.blue,
        shape: StadiumBorder(),
        onPressed: () => setState(() => pressAttention2 = !pressAttention2),
        child: Text(likeText),
      ),
    );
  }
}

class ButtonClass extends StatelessWidget {
  ImageInputState imageInput = ImageInputState();
  bool isImagePicked = false;
  File imageFile;

  @override
  Widget build(BuildContext context) {
    final buttonColor = Theme.of(context).primaryColor;
    Widget previewImage = Text('Please Select an Image');

    if (imageFile != null) {
      previewImage = Image.file(
        imageFile,
        fit: BoxFit.cover,
        height: 300.0,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.topCenter,
      );

      return Container(
        child: IconButton(
          iconSize: 60.0,
          icon: Icon(
            Icons.add,
          ),
          color: Colors.black,
          onPressed: () {
            imageInput.openImagePicker(context);
          },
        ),
        width: 160.0,
        color: Colors.grey,
      );
    } else
      return Container(
        child: IconButton(
          iconSize: 60.0,
          icon: Icon(
            Icons.add,
          ),
          color: Colors.black,
          onPressed: () {
            imageInput.openImagePicker(context);
          },
        ),
        width: 160.0,
        color: Colors.grey,
      );
  }
}

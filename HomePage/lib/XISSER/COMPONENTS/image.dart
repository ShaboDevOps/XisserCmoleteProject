import 'dart:io';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';





class ImageInput extends StatefulWidget {
  //final Function setImage;
  //final Product product;

  //ImageInput(this.setImage, this.product);

  @override
  State<StatefulWidget> createState() {
    return ImageInputState();
  }
}

class ImageInputState extends State<ImageInput> {
  File imageFile;

  void getImage(BuildContext context, ImageSource source) {
    ImagePicker.pickImage(source: source, maxWidth: 400.0).then((File image) {
      setState(() {
        imageFile = image;

      });
     //widget.setImage(image);
     // Navigator.pop(context);
    });
  }

  void openImagePicker(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 150.0,
            padding: EdgeInsets.all(10.0),
            child: Column(children: [
              Text(
                'Pick an Image',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              FlatButton(
                textColor: Theme.of(context).primaryColor,
                child: Text('Use Camera'),
                onPressed: () {
                  getImage(context, ImageSource.camera);
                },
              ),
              FlatButton(
                textColor: Theme.of(context).primaryColor,
                child: Text('Use Gallery'),
                onPressed: () {
                  getImage(context, ImageSource.gallery);
                },
              )
            ]),
          );
        });
  }

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
     }// else if (true/*widget.product != null*/) {
    //   previewImage = Image.network(
    //     //widget.product.image,
    //     fit: BoxFit.cover,
    //     height: 300.0,
    //     width: MediaQuery.of(context).size.width,
    //     alignment: Alignment.topCenter,
    //   );
    // }
    //return Column(
      // children: <Widget>[
      //   OutlineButton(
      //     borderSide: BorderSide(
      //       color: buttonColor,
      //       width: 2.0,
      //     ),
      //     onPressed: () {
      //       openImagePicker(context);
      //     },
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: <Widget>[
      //         Icon(
      //           Icons.camera_alt,
      //           color: buttonColor,
      //         ),
      //         SizedBox(
      //           width: 5.0,
      //         ),
      //         Text(
      //           'Add Image',
      //           style: TextStyle(color: buttonColor),
      //         )
      //       ],
      //     ),
      //   ),
      //   SizedBox(height: 10.0),
      //   previewImage,
      // ],
    //);
  }
}


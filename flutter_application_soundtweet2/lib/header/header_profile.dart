import 'dart:io';

// import 'package:image_picker/image_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_soundtweet2/header/profile_Edit/profile_edit.dart';
import 'header_setting.dart';

class Profile extends StatelessWidget {
  // final String iconImage;

  // Profile({Key key, @required this.iconImage}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Setting(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: Center(
        child: Profiledetail(),
      ),
    );
  }
}

class Profiledetail extends StatefulWidget {
  @override
  _Profiledetail createState() => _Profiledetail();
}

class _Profiledetail extends State<Profiledetail> {
  // File _image;
  // final picker = ImagePicker();
  // Future getImage() async {
  //   final pickedFile = await picker.getImage(source: ImageSource.gallery);

  //   setState(() {
  //     if (pickedFile != null) {
  //       _image = File(pickedFile.path);
  //     } else {
  //       print('No image selected.');
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        WidgetA(),
        WidgetB(),
      ],
    ));
  }
}

class WidgetA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Align(
        alignment: Alignment(-0.9, -0.7),
        child: CircleAvatar(
          radius: 55,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage('images/IMG_8724.jpeg'),
        ),
      ),
    );
  }
}

class WidgetB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Align(
        alignment: Alignment(0.9, -0.5),
        child: RaisedButton(
            color: Colors.white60,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            child: const Text('Edit Profile'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Profileedit()));
            }),
      ),
    );
  }
}

import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'header_setting.dart';
import 'profile_Edit/profile_edit.dart';

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
  // String name;

  // String username;
  // String bio;
  // String link;
  // _Profiledetail({
  //   Key key,
  //   this.name,
  //   this.username,
  //   this.bio,
  //   this.link,
  // }) : super(key:key);
  // final ViewAToBArguments viewAToBArguments =
  //     ModalRoute.of(context).settings.arguments;
  // String name = viewAToBArguments.name;
  // String username = viewAToBArguments.username;
  // String bio = viewAToBArguments.bio;
  // String link = viewAToBArguments.link;
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
  String name = '';
  String username = '';
  // final ProfileValue args = ModalRoute.of(context).settings.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        WidgetA(),
        Container(
          margin: EdgeInsets.only(top: 130, left: 250),
          child: RaisedButton(
              color: Colors.white60,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
              child: const Text('Edit Profile'),
              onPressed: () async {
                final result = await Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profileedit()));
                setState(() {
                  name = result;

                  // username = result;
                });
                print(result);
                // final result2 = await Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => Profileedit()));
                // setState(() {
                //   username = result2;
                //   // username = result;
                // });
                // print(result);
              }),
        ),
        Container(
          child: Center(
            child: Align(
              alignment: Alignment(0, -0.34),
              // child: FittedBox(
              child: Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            //),
          ),
        ),
        Container(
          child: Center(
            child: Align(
              alignment: Alignment(0, -0.23),
              child: Text(
                '@' + username,
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        )
      ],
    ));
  }
}

class WidgetA extends StatelessWidget {
  File _image;
  String image = 'Image';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Align(
          alignment: Alignment(0, -0.7),
          child: CircleAvatar(
              radius: 55,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('images/IMG_8724.jpeg')),
        ),
      ),
    );
  }
}

// class WidgetAUnder extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return Center(
//       child: Align(
//         alignment: Alignment(-0.83, -0.32),
//         child: FlatButton(
//           onPressed: () {},
//         ),
//       ),
//     );
//   }
// }

// class WidgetB extends StatefulWidget {
//   _WidgetB createState() => _WidgetB();
// }

// class _WidgetB extends State<WidgetB> {
//   String name = '';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: <Widget>[
//             Container(
//               margin: EdgeInsets.only(top: 150, left: 220),
//               child: RaisedButton(
//                   color: Colors.white60,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(7),
//                   ),
//                   child: const Text('Edit Profile'),
//                   onPressed: () async {
//                     final result = await Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => Profileedit()));
//                     // setState(() {
//                     //   name = result;
//                     // });
//                     print(result);
//                   }),
//             ),
//             Container(
//               child: Text(name),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

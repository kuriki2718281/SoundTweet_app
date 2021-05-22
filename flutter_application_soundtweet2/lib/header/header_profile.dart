import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'header_setting.dart';

class Profile extends StatelessWidget {
  final String iconImage;
  Profile({Key key, @required this.iconImage}) : super(key: key);
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
        child: Column(
          children: [],
        ),
      ),
    );
  }
}

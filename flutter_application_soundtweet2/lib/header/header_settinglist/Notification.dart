import 'package:flutter/material.dart';

class Notificationsetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notificatiotn"),
      ),
      body: Center(
        child: Notificationbody(),
      ),
    );
  }
}

class Notificationbody extends StatefulWidget {
  @override
  _Notificationbody createState() => _Notificationbody();
}

class _Notificationbody extends State<Notificationbody> {
  bool notificationswitch = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text("Notification"),
            trailing: Switch(
              value: notificationswitch,
              onChanged: (bool value) {
                setState(() {
                  notificationswitch = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_soundtweet2/header/header_settinglist/privacy.dart';
import 'header_settinglist/privacy.dart';
import '../header.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy"),
      ),
      body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 1)),
          Widgetprivacy(),
          Padding(padding: EdgeInsets.only(top: 1)),
          Widgetaccount(),
          Padding(padding: EdgeInsets.only(top: 1)),
          WidgetNotification(),
          Padding(padding: EdgeInsets.only(top: 1)),
          Widgetsound(),
          Padding(padding: EdgeInsets.only(top: 1)),
          Widgetabout(),
          Widgetlogout(),
        ],
      ),
    );
  }
}

class Widgetprivacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlineButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.vpn_key),
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Text("Privacy"),
                ],
              )),
        ),
      ),
    );
  }
}

class Widgetaccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlineButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.account_box),
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Text("Account"),
                ],
              )),
        ),
      ),
    );
  }
}

class WidgetNotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlineButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.notifications),
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Text("Notification"),
                ],
              )),
        ),
      ),
    );
  }
}

class Widgetsound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlineButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.music_note),
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Text("Sound"),
                ],
              )),
        ),
      ),
    );
  }
}

class Widgetabout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlineButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.info),
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Text("About SoundTweet"),
                ],
              )),
        ),
      ),
    );
  }
}

class Widgetlogout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: SizedBox(
          width: double.infinity,
          child: OutlineButton(
            onPressed: () {},
            child: Text(
              "Log Out",
              style: TextStyle(color: Colors.redAccent),
            ),
          ),
        ),
      ),
    );
  }
}
// class Widgetaccount extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         child: SizedBox(
//           width: double.infinity,
//           child: OutlineButton(
//             onPressed: () {},
//             child: Text("Account"),
//           ),
//         ),
//       ),
//     );
//   }
// }
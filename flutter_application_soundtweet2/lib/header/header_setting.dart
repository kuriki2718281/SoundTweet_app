import 'package:flutter/material.dart';
import 'package:flutter_application_soundtweet2/header/header_settinglist/Account.dart';
import 'package:flutter_application_soundtweet2/header/header_settinglist/Privacy.dart';
import 'package:flutter_application_soundtweet2/header/header_settinglist/Notification.dart';
import 'package:flutter_application_soundtweet2/header/header_settinglist/Sound.dart';
import 'package:flutter_application_soundtweet2/header/header_settinglist/About.dart';
// import 'header_settinglist/Privacy.dart';
// import 'header_settinglist/Notification.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Setting",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Settingbody(),
      ),
    );
  }
}

class Settingbody extends StatefulWidget {
  @override
  _Settingbody createState() => _Settingbody();
}

class _Settingbody extends State<Settingbody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Privacysetting(),
                  ),
                );
              },
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Account(),
                  ),
                );
              },
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Notificationsetting(),
                  ),
                );
              },
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sound(),
                  ),
                );
              },
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => About(),
                  ),
                );
              },
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
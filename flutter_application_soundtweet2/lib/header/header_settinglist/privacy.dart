import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Privacysetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy'),
      ),
      body: Center(
        child: Privatesettingbody(),
      ),
    );
  }
}

class Privatesettingbody extends StatefulWidget {
  @override
  _Privatesettingbody createState() => _Privatesettingbody();
}

class _Privatesettingbody extends State<Privatesettingbody> {
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text("Private Account"),
            trailing: CupertinoSwitch(
              value: isSwitched1,
              onChanged: (bool value) {
                setState(() {
                  isSwitched1 = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text("Comment"),
            trailing: CupertinoSwitch(
              value: isSwitched2,
              onChanged: (bool value) {
                setState(() {
                  isSwitched2 = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
// ListTile(
          //   title: Text("Private Account"),
          //   trailing: CupertinoSwitch(
          //     value: isSwitched,
          //     onChanged: (bool value) {
          //       setState(() {
          //         isSwitched = value;
          //       });
          //     },
          //   ),
          // )s
          // Widgetprivate(),
          // Widgetcomment(),
          // Widgetsoundpost(),


// class Widgetprivate extends StatelessWidget {
//   var _switchValue = false;
//   var _changeSwitch = true;
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         child: SizedBox(
//           width: double.infinity,
//           height: 50,
//           child: OutlineButton(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

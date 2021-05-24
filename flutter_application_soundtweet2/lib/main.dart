import 'package:flutter/material.dart';
import './header.dart';
import './root.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  // _State createState() => _State();

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red[700],
      ),
      home: Scaffold(
        appBar: Header(),
        body: Center(),
        bottomNavigationBar: RootWidget(),
      ),
    );
  }
}

// class _State extends State {
//   var _city = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         drawer: Drawer(
//           child: ListView(
//             children: <Widget>[
//               DrawerHeader(
//                 child: Text(
//                   'My App',
//                   style: TextStyle(
//                     fontSize: 24,
//                     color: Colors.white,
//                   ),
//                 ),
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                 ),
//               ),
//               ListTile(
//                 title: Text('Los Angeles'),
//                 onTap: () {
//                   setState(() => _city = 'Los Angeles, CA');
//                   Navigator.pop(context);
//                 },
//               ),
//               ListTile(
//                 title: Text('Honolulu'),
//                 onTap: () {
//                   setState(() => _city = 'Honolulu, HI');
//                   Navigator.pop(context);
//                 },
//               ),
//               ListTile(
//                 title: Text('Dallas'),
//                 onTap: () {
//                   setState(() => _city = 'Dallas, TX');
//                   Navigator.pop(context);
//                 },
//               ),
//               ListTile(
//                 title: Text('Seattle'),
//                 onTap: () {
//                   setState(() => _city = 'Seattle, WA');
//                   Navigator.pop(context);
//                 },
//               ),
//               ListTile(
//                 title: Text('Tokyo'),
//                 onTap: () {
//                   setState(() => _city = 'Tokyo, Japan');
//                   Navigator.pop(context);
//                 },
//               ),
//             ],
//           ),
//         ),
//         body: Center(
//           child: Text(
//             _city,
//             style: TextStyle(
//               fontSize: 32,
//             ),
//           ),
//         ));
//   }
// }

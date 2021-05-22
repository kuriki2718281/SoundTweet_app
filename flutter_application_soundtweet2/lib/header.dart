import 'package:flutter/material.dart';
import 'header/header_setting.dart';
import 'header/header_profile.dart';

class Header extends StatelessWidget with PreferredSizeWidget {
  final String headerTitle;
  Header({this.headerTitle});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: UserIcon(),
      ),
      title: Center(
        child: Text(headerTitle),
      ),
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
    );
  }
}

class UserIcon extends StatefulWidget {
  @override
  _UserIcon createState() => _UserIcon();
}

class _UserIcon extends State {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CircleAvatar(
          backgroundImage:
              AssetImage('images/71CC5C57-069E-4EB6-A53B-F191AC915EAE.jpg'),
          radius: 60.0,
        ),
        RawMaterialButton(
          child: Container(
            width: 100.0,
            height: 100.0,
          ),
          shape: CircleBorder(),
          elevation: 0.0,
          onPressed: () {
            // Navigator.of(context, rootNavigator: true).push(
            //   CupertinoPageRoute<bool>(
            //     fullscreenDialog: true,
            //     builder: (BuildContext context) => Profile(),
            //   ),
            // );
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Profile(),
              ),
            );
          },
        )
      ],
    );
  }
}

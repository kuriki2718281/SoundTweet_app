import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
      ),
      body: Center(
        child: Accountbody(),
      ),
    );
  }
}

class Accountbody extends StatefulWidget {
  @override
  _Accountbody createState() => _Accountbody();
}

class _Accountbody extends State<Accountbody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Widgetusername(),
          Widgetphonenumber(),
          Widgetemail(),
          Widgetpassword(),
          Widgetcountry(),
          Widgetlanguage(),
        ],
      ),
    );
  }
}

class Widgetusername extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlineButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Privacysetting(),
                //   ),
                // );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Username",
                    // style: TextStyle(fontSize: 20),
                  ),
                  Padding(padding: EdgeInsets.all(120)),
                  Icon(Icons.add_outlined),
                ],
              )),
        ),
      ),
    );
  }
}

class Widgetphonenumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlineButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Privacysetting(),
                //   ),
                // );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Phone Number",
                    // style: TextStyle(fontSize: 20),
                  ),
                  Padding(padding: EdgeInsets.all(104)),
                  Icon(Icons.add_outlined),
                ],
              )),
        ),
      ),
    );
  }
}

class Widgetemail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlineButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Privacysetting(),
                //   ),
                // );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Email",
                    // style: TextStyle(fontSize: 20),
                  ),
                  Padding(padding: EdgeInsets.all(136)),
                  Icon(Icons.add_outlined),
                ],
              )),
        ),
      ),
    );
  }
}

class Widgetpassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlineButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Privacysetting(),
                //   ),
                // );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Password",
                    // style: TextStyle(fontSize: 20),
                  ),
                  Padding(padding: EdgeInsets.all(120)),
                  Icon(Icons.add_outlined),
                ],
              )),
        ),
      ),
    );
  }
}

class Widgetcountry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlineButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Privacysetting(),
                //   ),
                // );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Country",
                    // style: TextStyle(fontSize: 20),
                  ),
                  Padding(padding: EdgeInsets.all(127)),
                  Icon(Icons.add_outlined),
                ],
              )),
        ),
      ),
    );
  }
}

class Widgetlanguage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlineButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Privacysetting(),
                //   ),
                // );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Language",
                    // style: TextStyle(fontSize: 20),
                  ),
                  Padding(padding: EdgeInsets.all(120)),
                  Icon(Icons.add_outlined),
                ],
              )),
        ),
      ),
    );
  }
}

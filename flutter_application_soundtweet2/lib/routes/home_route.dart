import 'package:flutter/material.dart';
import '../header/header.dart';
import 'home_NextPage/home_NextPage.dart';

// class TodoListPage extends StatefulWidget {
//   @override
//   _Home createState() => _Home();
// }

class Home extends StatelessWidget {
  final String screenName = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(
        headerTitle: screenName,
      ),
      body: Center(
          //   itemCount: todolist.length,
          //   itemBuilder: (context, index) {
          //     return Card(
          //       child: ListTile(
          //         title: Text(todolist[index]),
          //       ),
          //     );
          //   },
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NextPage(),
            ),
          );
        },
        backgroundColor: Colors.red,
        tooltip: 'SoundTweet',
        child: Icon(
          Icons.album,
          size: 40,
          color: Colors.white,
        ),
      ),
      drawer: Drawer(
        child: Center(
          child: Text('hello'),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_NextPage_list_data.dart';
import 'home_NextPage_deteils.dart';
import 'package:just_audio/just_audio.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SoundTweet'),
      ),
      body: Center(
        child: NextPagebody(),
      ),
    );
  }
}

class NextPagebody extends StatefulWidget {
  @override
  _NextPagebodydetail createState() => _NextPagebodydetail();
}

class _NextPagebodydetail extends State<NextPagebody> {
  String _tweettext = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child: TextField(
            keyboardType: TextInputType.multiline,
            maxLines: 10,
            minLines: 7,
            decoration: InputDecoration(
              labelText: "What a Sound!!!",
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 2)),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2,
                ),
              ),
            ),
            onChanged: (String value) {
              setState(() {
                _tweettext = value;
              });
            },
          ),
        ),
        // Container(
        //     child: FlatButton(
        //         onPressed: () {
        //           Navigator.push(context, MaterialPageRoute(builder: (context)=>()));
        //         },
        //         child: Text("record"))),
        Container(
          padding: EdgeInsets.only(top: 350),
          child: Center(
            child: RaisedButton(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Text("Done"),
              onPressed: () {
                Navigator.of(context).pop(_tweettext);
              },
            ),
          ),
        ),
        Widgetrecord(),
        Widgetupload(),
      ],
    ));
  }
}

// class Widgettweet extends StatelessWidget {
//   String _tweettext = '';
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         children: <Widget>[
//           Container(
//             padding: EdgeInsets.all(20),
//             child: TextField(
//               keyboardType: TextInputType.multiline,
//               maxLines: 10,
//               minLines: 7,
//               decoration: InputDecoration(
//                 labelText: "What a Sound!!!",
//                 focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.red, width: 2)),
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(
//                     color: Colors.red,
//                     width: 2,
//                   ),
//                 ),
//               ),
//               onChanged: (String value) {
//                 setState(() {
//                   _tweettext = value;
//                 });
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class Widgetrecord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Align(
        alignment: Alignment(0, 0.95),
        child: RaisedButton(
          child: const Icon(
            Icons.circle,
            color: Colors.red,
            size: 70,
          ),
          color: Colors.white,
          shape: const CircleBorder(
              side: BorderSide(
            color: Colors.black,
            width: 1,
            style: BorderStyle.solid,
          )),
          onPressed: () {},
        ),
      ),
    );
  }
}

class Widgetupload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Align(
        alignment: Alignment(0.6, 0.92),
        child: IconButton(
          icon: Icon(
            Icons.file_upload,
            size: 45,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
        // RaisedButton(
        //   onPressed: () {},
        //   child: const Icon(
        //     Icons.circle,
        //     color: Colors.red,
        //     size: 70,
        //   ),
        //   color: Colors.white,
        //   shape: const CircleBorder(
        //       side: BorderSide(
        //     color: Colors.black,
        //     width: 1,
        //     style: BorderStyle.solid,
        //   )),
        // ),
        // IconButton(
        //   icon: Icon(Icons.file_upload),
        //   onPressed: () {},
        // )
// child: ListView.builder(
//   itemExtent: 230.0,
//   itemCount: list.length,
//   itemBuilder: (BuildContext context, int index) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.of(context).push(
//           MaterialPageRoute(
//             fullscreenDialog: true,
//             builder: (BuildContext context) => DetailPage(
//               item: list[index],
//             ),
//           ),
//         );
//       },
//       child: Card(
//         margin: EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 8.0),
//         elevation: 4.0,
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12.0)),
//         clipBehavior: Clip.antiAlias,
//         child: Stack(
//           children: <Widget>[
//             Hero(
//               tag: 'background' + list[index].id,
//               child: Container(
//                 color: list[index].backgroundColor,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Hero(
//                     tag: 'image' + list[index].id,
//                     child: Image.network(
//                       list[index].imagePath,
//                       fit: BoxFit.fitWidth,
//                       height: 100,
//                     ),
//                   ),
//                   Hero(
//                     tag: 'title' + list[index].id,
//                     child: Material(
//                       color: Colors.transparent,
//                       child: Text(
//                         list[index].title,
//                         style: TextStyle(fontSize: 20),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Hero(
//                     tag: 'subtitle' + list[index].id,
//                     child: Material(
//                       color: Colors.transparent,
//                       child: Text(
//                         list[index].subtitle,
//                         style: TextStyle(fontSize: 16),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   },
// ),

// class NextPagefile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Column(
//           children: <Widget>[
//             Container(
//               padding: EdgeInsets.only(top: 32),
//               child: Text('IconButton'),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 IconButton(
//                   onPressed: () {},
//                   icon: Icon(Icons.thumb_up),
//                 ),
//                 IconButton(
//                   color: Colors.pink,
//                   onPressed: () {},
//                   icon: Icon(Icons.favorite),
//                 ),
//                 IconButton(
//                   iconSize: 64,
//                   onPressed: () {},
//                   icon: Icon(Icons.flight),
//                 ),
//               ],
//             ),
//             Container(
//               padding: EdgeInsets.only(top: 32),
//               child: Text('アイコン＋テキスト'),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 TextButton.icon(
//                   onPressed: () {},
//                   icon: Icon(Icons.thumb_up),
//                   label: Text('Good'),
//                 ),
//                 OutlinedButton.icon(
//                   onPressed: () {},
//                   icon: Icon(Icons.favorite, color: Colors.pink),
//                   label: Text('Like'),
//                 ),
//                 ElevatedButton.icon(
//                   onPressed: () {},
//                   icon: Icon(Icons.flight),
//                   label: Text('Flight'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// RaisedButton(
//               child: const Icon(
//                 Icons.circle,
//                 color: Colors.red,
//                 size: 70,
//               ),
//               color: Colors.white,
//               shape: const CircleBorder(
//                   side: BorderSide(
//                 color: Colors.black,
//                 width: 1,
//                 style: BorderStyle.solid,
//               )),
//               onPressed: () {},
//             ),
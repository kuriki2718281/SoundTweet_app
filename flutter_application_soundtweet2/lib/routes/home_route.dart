import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../header.dart';
import 'home_NextPage.dart';

// class TodoListPage extends StatefulWidget {
//   @override
//   _Home createState() => _Home();
// }
class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  final String screenName = 'Home';
  String _message;
  List<String> tweetList = [];

  @override
  void initState() {
    super.initState();
    _message = '';
  }

  void _setMessage(message) {
    setState(() {
      _message = message;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(
        headerTitle: screenName,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: tweetList.length,
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                children: <Widget>[
                  Container(
                    child: ListTile(
                      title: Text(
                        tweetList[index],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CupertinoButton(
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.pinkAccent,
                        ),
                        onPressed: () {},
                      ),
                      CupertinoButton(
                        child: Icon(
                          Icons.comment_outlined,
                          color: Colors.grey,
                        ),
                        onPressed: () {},
                      ),
                      CupertinoButton(
                        child: Icon(
                          Icons.more_vert,
                        ),
                        onPressed: () {
                          showCupertinoModalPopup(
                            context: context,
                            builder: (BuildContext context) {
                              return CupertinoActionSheet(
                                // title: const Text('選択した項目が画面に表示されます'),
                                actions: <Widget>[
                                  CupertinoActionSheetAction(
                                    child: const Text('Share'),
                                    onPressed: () {
                                      _setMessage('Share');
                                      Navigator.pop(context, 'Share');
                                    },
                                  ),
                                  CupertinoActionSheetAction(
                                    child: const Text(
                                      'Delete',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                    onPressed: () {
                                      _setMessage('Delete');
                                      // Navigator.pop(context, 'Delete');
                                      //ダイアログが消えないので後ほど修正。
                                      showDialog(
                                        context: context,
                                        builder: (_) {
                                          return CupertinoAlertDialog(
                                            title: Text("Delete Tweet"),
                                            content: Text(
                                                "Are you sure you want to delete this Tweet?"),
                                            actions: <Widget>[
                                              CupertinoDialogAction(
                                                child: Text("Cancel"),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                              ),
                                              CupertinoDialogAction(
                                                child: Text("Delete"),
                                                isDestructiveAction: true,
                                                onPressed: () {
                                                  Navigator.pop(
                                                      context, 'Delete');
                                                  setState(() {
                                                    tweetList.removeLast();
                                                  });
                                                },
                                              )
                                            ],
                                          );
                                        },
                                      );

                                      // setState(() {
                                      //   tweetList.removeLast();
                                      // });
                                    },
                                  ),
                                  // CupertinoActionSheetAction(
                                  //   child: const Text('テスト3'),
                                  //   onPressed: () {
                                  //     _setMessage('テスト3');
                                  //     Navigator.pop(context, 'テスト3');
                                  //   },
                                  // ),
                                ],
                                cancelButton: CupertinoActionSheetAction(
                                  child: const Text('キャンセル'),
                                  isDefaultAction: true,
                                  onPressed: () {
                                    Navigator.pop(context, 'キャンセル');
                                  },
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
      // Expanded(
      //     flex: 5,
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: <Widget>[
      //         Container(
      //           color: Colors.teal[200],
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: <Widget>[Text(tweetList[index])],
      //           ),
      //         )
      //       ],
      //     ))
      // Row(
      //   children: <Widget>[

      //   ],
      // ),

      // actions: <Widget>[
      //   CupertinoContextMenuAction(
      //     child: const Text("Share"),
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      //   CupertinoContextMenuAction(
      //     child: const Text(
      //       "Delete",
      //       style: TextStyle(
      //         color: Colors.red,
      //       ),
      //     ),
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //   )
      // ],

      //     child: Column(
      //   mainAxisSize: MainAxisSize.min,
      //   children: <Widget>[
      //     ListTile(
      //       title: Text(tweetList[index]),

      //       // trailing: PopupMenuButton<String>(
      //       //     itemBuilder: (BuildContext context) =>
      //       //         <PopupMenuEntry<String>>[
      //       //           const PopupMenuItem(
      //       //             value: "1",
      //       //             child: Text("削除"),
      //       //           )
      //       //         ]),
      //     )
      //   ],
      // )

      //   itemCount: todolist.length,
      //   itemBuilder: (context, index) {
      //     return Card(
      //       child: ListTile(
      //         title: Text(todolist[index]),
      //       ),
      //     );
      //   },

      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final tweetText = await Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return NextPage();
              },
            ),
          );
          if (tweetText != null) {
            setState(() {
              tweetList.add(tweetText);
            });
          }
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

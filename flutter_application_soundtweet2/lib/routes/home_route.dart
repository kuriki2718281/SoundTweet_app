import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../header.dart';
import 'home_NextPage.dart';
import 'home_route_comment/comment.dart';
import 'package:like_button/like_button.dart';

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
  int _favaritecount = 0;
  // IconData iconData = Icons.favorite_outline;
  // Color _iconColor = Colors.grey;
  String comments;
  final myController = TextEditingController();

  int _counter = 0;

  List<Map<String, dynamic>> items = [];

  void _addItem(String inputtext) {
    setState(() {
      _counter++;
      items.add({"content": inputtext});
    });
  }

  @override
  // widgetの破棄時にコントローラも破棄する
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _message = '';
  }

  // void _addCommentText(String inputtext) {
  //   setState(() {
  //     comment.add(inputtext);
  //   });
  // }

  // void _onPressed() {
  //   setState(() {
  //     _favaritecount++;
  //   });
  //   iconData = Icons.favorite;
  //   _iconColor = Colors.pink;
  //   return;
  // }

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
                      Row(children: <Widget>[
                        Padding(padding: EdgeInsets.only(left: 15)),
                        LikeButton(
                          isLiked: false,
                          //いずれそれぞれに値を作らせる
                          likeCount: _favaritecount,
                          countBuilder: (int count, bool isLiked, String text) {
                            var color = isLiked ? Colors.pink : Colors.grey;
                            Widget result;
                            if (count == 0) {
                              result = Text(
                                "",
                                style: TextStyle(color: color),
                              );
                            } else
                              result = Text(
                                text,
                                style: TextStyle(color: color),
                              );
                            return result;
                          },
                        ),

                        // FavoriteButton(
                        //   iconSize: 10,
                        //   isFavorite: true,
                        //   valueChanged: (_isFavorite) {
                        //     _onPressed();
                        //   },
                        // ),
                        // IconButton(
                        //     icon: Icon(iconData),
                        //     color: _iconColor,
                        //     onPressed: () {
                        //       _onPressed();
                        //     }),
                        // Text("$_favaritecount"),
                      ]),

                      // CupertinoButton(
                      //   child: Row(
                      //     children: <Widget>[
                      //       Icon(
                      //         Icons.favorite_outline,
                      //         color: Colors.grey,
                      //       ),
                      //       Text(
                      //         "$_favaritecount",
                      //         style: TextStyle(color: Colors.black),
                      //       )
                      //     ],
                      //   ),
                      //   onPressed: _favaritecount >= 1 ? null : _favorite,
                      // ),
                      Row(
                        children: <Widget>[
                          CupertinoButton(
                            child: Icon(
                              Icons.comment_outlined,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              showBottomSheet<void>(
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    height: 400,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30)),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(16.0),
                                        ),
                                        Expanded(
                                          child: ListView.builder(
                                              scrollDirection: Axis.vertical,
                                              shrinkWrap: true,
                                              itemCount: items.length,
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                final item = items[index];

                                                return Card(
                                                  child: ListTile(
                                                    leading: Icon(Icons.face),
                                                    title:
                                                        Text(item["content"]),
                                                  ),
                                                );
                                              }),
                                        ),
                                        TextField(
                                          controller: myController,
                                          cursorColor: Colors.redAccent,
                                          keyboardType: TextInputType.multiline,
                                          maxLines: 2,
                                          minLines: 1,
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.white,
                                            labelText: "Reply",
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.red,
                                                    width: 2),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(30))),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30)),
                                              borderSide: BorderSide(
                                                color: Colors.red,
                                                width: 2,
                                              ),
                                            ),
                                            suffixIcon: IconButton(
                                              icon: Icon(Icons.reply),
                                              onPressed: () {
                                                _addItem(myController.text);

                                                // テキストフィールドの内容をクリアする
                                                myController.clear();
                                                // myController.clear();
                                              },
                                            ),
                                          ),
                                          // onChanged: (String value) {
                                          //   setState(() {
                                          //     comments = value;
                                          //   });
                                          // },
                                        ),
                                        // Padding(
                                        //   padding: const EdgeInsets.all(16),
                                        // ),
                                        // Expanded(
                                        //   child: ListView.builder(
                                        //     itemCount: comment.length,
                                        //     itemBuilder: (context, index2) {
                                        //       return Card();
                                        //     },
                                        //   ),
                                        // )
                                      ],
                                    ),
                                  );
                                },
                              );

                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => Commentpage(),
                              //     fullscreenDialog: true,
                              //   ),
                              // );
                            },
                          ),
                          Text("$_counter")
                        ],
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
                                    },
                                  ),
                                ],
                                cancelButton: CupertinoActionSheetAction(
                                  child: Text('キャンセル'),
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
      // resizeToAvoidBottomInset: true,

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
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

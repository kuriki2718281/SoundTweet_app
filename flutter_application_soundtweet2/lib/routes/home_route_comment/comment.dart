import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
// import 'package:like_button/like_button.dart';
// import '../home_NextPage.dart';

class Commentpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Comment(),
      ),
    );
  }
}

class Comment extends StatefulWidget {
  @override
  _Comment createState() => _Comment();
}

class _Comment extends State<Comment> {
  List<String> _commenttweet;

  @override
  void _addComment(String val) {
    setState(() {
      _commenttweet.add(val);
    });
  }

  Widget _buildCommentList() {
    return ListView.builder(itemBuilder: (context, index) {
      if (index < _commenttweet.length) {
        return _buildCommentItem(_commenttweet[index]);
      }
    });
  }

  Widget _buildCommentItem(String comment) {
    return ListTile(
      title: Text(comment),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Comment"),
      ),
      body: Column(
        children: <Widget>[
          Flexible(child: _buildCommentList()),
          TextField(
            onSubmitted: (String submittedStr) {
              _addComment(submittedStr);
            },
            keyboardType: TextInputType.multiline,
            maxLines: 2,
            minLines: 1,
            decoration: InputDecoration(
              labelText: "Reply",
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2,
                ),
              ),
              // suffixIcon: IconButton(
              //   icon: Icon(
              //     Icons.reply,
              //   ),
              //   onPressed: () {},
              // ),
              // onChanged: (String value) {
              //   setState(() {
              //     Commenttweet = value;
              //   });
              // },
            ),
          ),
        ],
      ),
    );
  }
}

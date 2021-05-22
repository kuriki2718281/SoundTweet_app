import 'package:flutter/material.dart';
import 'home_NextPage_list_data.dart';

class DetailPage extends StatelessWidget {
  final ItemModel item;
  DetailPage({this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Hero(
          tag: 'title' + item.id,
          child: Material(
            color: Colors.transparent,
            child: Text(
              item.title,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        backgroundColor: item.backgroundColor,
      ),
      body: Stack(
        children: <Widget>[
          Hero(
            tag: 'background' + item.id,
            child: Container(
              color: item.backgroundColor,
            ),
          ),
          Center(
            child: Column(
              children: <Widget>[
                Hero(
                  tag: 'image' + item.id,
                  child: Image.network(
                    item.imagePath,
                    fit: BoxFit.fitWidth,
                    height: 300,
                  ),
                ),
                Hero(
                  tag: 'subtitle' + item.id,
                  child: Material(
                    color: Colors.transparent,
                    child: Text(
                      item.subtitle,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

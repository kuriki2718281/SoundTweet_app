import 'package:flutter/material.dart';

final list = [
  ItemModel(
      id: '1',
      title: 'Recording',
      subtitle: '',
      imagePath: '',
      backgroundColor: Colors.red),
  ItemModel(
      id: '2',
      title: 'Select a File',
      subtitle: '',
      imagePath: '',
      backgroundColor: Colors.red),
  ItemModel(
    id: '3',
    title: 'Road Movie',
    subtitle: '',
    imagePath: '',
    backgroundColor: Colors.red,
  ),
];

// リストに表示するデータモデル
class ItemModel {
  String id;
  String title;
  String subtitle;
  String imagePath;
  String icon;
  Color backgroundColor;

  ItemModel({
    this.id,
    this.title,
    this.subtitle,
    this.imagePath,
    this.icon,
    this.backgroundColor,
  });
}

import 'package:flutter/material.dart';
import '../header/header.dart';

class Search extends StatelessWidget {
  final String screenName = 'Search';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(
        headerTitle: screenName,
      ),
      body: Center(child: Text(screenName)),
    );
  }
}

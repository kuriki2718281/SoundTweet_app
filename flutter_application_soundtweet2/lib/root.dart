import 'package:flutter/material.dart';
import 'routes/home_route.dart';
import 'routes/search_route.dart';
import 'routes/notice_route.dart';

class RootWidget extends StatefulWidget {
  @override
  _RootWidget createState() => _RootWidget();
}

class _RootWidget extends State<RootWidget> {
  int _selectedIndex = 0;
  final _bottomNavigationBarItems = <BottomNavigationBarItem>[];

  //アイコン情報
  final Map _RootWidgetIcons = {
    'Home': {'icon': Icons.home, 'route': Home()},
    'Search': {'icon': Icons.search, 'route': Search()},
    'Notice': {'icon': Icons.notifications, 'route': Notice()},
  };

  //アイコン順番
  final List _RootWidgetItemOrder = [
    'Home',
    'Search',
    'Notice',
  ];
  @override
  void initState() {
    super.initState();
    for (var i = 0; i < _RootWidgetItemOrder.length; i++) {
      _bottomNavigationBarItems.add(_CreateIcon(_RootWidgetItemOrder[i]));
    }
  }

  //アイコンを作成する
  BottomNavigationBarItem _CreateIcon(String key) {
    return BottomNavigationBarItem(
      icon: Icon(_RootWidgetIcons[key]['icon']),
      title: Text(key),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _RootWidgetIcons[_RootWidgetItemOrder.asMap()[_selectedIndex]]
          ['route'],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: _bottomNavigationBarItems,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.black45,
      ),
    );
  }
}
// class _Footer extends State {
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       items: const [
//         BottomNavigationBarItem(
//           icon: Icon(Icons.home),
//           title: Text('ホーム'),
//         )
//         BottomNavigationBarItem(
//           icon: Icon(Icons.search),
//           title: Text('検索'),
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.notifications),
//           title: Text('通知'),
//         ),
//       ],
//       selectedItemColor: Colors.redAccent,
//       unselectedItemColor: Colors.black45,
//     );
//   }
// }
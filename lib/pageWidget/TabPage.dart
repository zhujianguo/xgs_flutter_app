/// Flutter code sample for BottomNavigationBar

// This example shows a [BottomNavigationBar] as it is used within a [Scaffold]
// widget. The [BottomNavigationBar] has four [BottomNavigationBarItem]
// widgets, which means it defaults to [BottomNavigationBarType.shifting], and
// the [currentIndex] is set to index 0. The selected item is amber in color.
// With each [BottomNavigationBarItem] widget, backgroundColor property is
// also defined, which changes the background color of [BottomNavigationBar],
// when that item is selected. The `_onItemTapped` function changes the
// selected item's index and displays a corresponding message in the center of
// the [Scaffold].

import 'package:flutter/material.dart';
import 'package:xgs_flutter_app/pageWidget/MyHomePage.dart';
import 'package:xgs_flutter_app/uiElement/BasicWidgetDetailsPage.dart';

class TabPage extends StatefulWidget {
  static const String routeName = "tabPage";
  const TabPage({Key key}) : super(key: key);
  @override
  State<TabPage> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<TabPage> {
  int _selectedIndex = 0;
  String _title = "首页";
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    MyHomePage(),
    BasicWidgetDetailsPage(),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    switch(index){
      case 0:
        setState(() {
          _selectedIndex = index;
          _title = "首页";
        });
        break;
      case 1:
        setState(() {
          _selectedIndex = index;
          _title = "组件";
        });
        break;
      case 2:
        setState(() {
          _selectedIndex = index;
          _title = "demo";
        });
        break;
      case 3:
        setState(() {
          _selectedIndex = index;
          _title = "资讯";
        });
        break;
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '首页',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: '组件',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: '行业资讯',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '设置',
            backgroundColor: Colors.red,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black54,
        onTap: _onItemTapped,
      ),
    );
  }
}

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
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    MyHomePage(),
    BasicWidgetDetailsPage(),
    Text(
      '资讯',
      style: optionStyle,
    ),
    Text(
      '设置',
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
          _title = "资讯";
        });
        break;
      case 3:
        setState(() {
          _selectedIndex = index;
          _title = "设置";
        });
        break;
    }

  }

  Color _setIconColor(index){
    if(index==_selectedIndex){
      return Colors.red;
    }
    return Colors.black45;
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
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(onPressed: (){_onItemTapped(0);}, icon: Icon(Icons.home), color: _setIconColor(0)),
            IconButton(onPressed: (){_onItemTapped(1);}, icon: Icon(Icons.business), color: _setIconColor(1)),
            Text(''),
            IconButton(onPressed: (){_onItemTapped(2);}, icon: Icon(Icons.school), color: _setIconColor(2)),
            IconButton(onPressed: (){_onItemTapped(3);}, icon: Icon(Icons.settings), color: _setIconColor(3))
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

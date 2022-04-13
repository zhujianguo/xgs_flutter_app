
import 'package:flutter/material.dart';
import 'package:xgs_flutter_app/pageWidget/MyHomePage.dart';
import 'package:xgs_flutter_app/uiElement/BasicWidgetDetailsPage.dart';


/// 初始版本的底部菜单，已弃用
class NewTabPage extends StatefulWidget {
  const NewTabPage({Key key}) : super(key: key);
  static const String routeName = "newTabPage";

  @override
  State<NewTabPage> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<NewTabPage> {
  int _selectedIndex = 0;
  String _title = "首页";
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
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
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        type: BottomNavigationBarType.fixed, // BottomNavigationBar超出三个时，需要加上此属性，不让默认颜色会丢失
        onTap: _onItemTapped,
      ),
    );
  }
}

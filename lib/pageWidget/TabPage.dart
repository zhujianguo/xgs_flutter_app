import 'package:flutter/material.dart';
import 'package:xgs_flutter_app/pageWidget/MyHomePage.dart';
import 'package:xgs_flutter_app/uiElement/BasicWidgetDetailsPage.dart';

class TabPage extends StatefulWidget {
  static const String routeName = "tabPage";
  @override
  State<TabPage> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<TabPage> {
  int _selectedIndex = 0;
  String _title = "首页";
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

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
            IconButton(onPressed: (){_onItemTapped(0,"首页");}, icon: Icon(Icons.home), color: _setIconColor(0)),
            IconButton(onPressed: (){_onItemTapped(1,"组件");}, icon: Icon(Icons.business), color: _setIconColor(1)),
            Text(''),
            IconButton(onPressed: (){_onItemTapped(2,"资讯");}, icon: Icon(Icons.school), color: _setIconColor(2)),
            IconButton(onPressed: (){_onItemTapped(3,"设置");}, icon: Icon(Icons.settings), color: _setIconColor(3))
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  // 初始化首页渲染组件
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

  // 响应选中后的操作
  void _onItemTapped(int index, String title) {
    setState(() {
      _selectedIndex = index;
      _title = title;
    });
  }

  // 响应选中后的效果（修改选中颜色）
  Color _setIconColor(index){
    if(index==_selectedIndex){
      return Colors.red;
    }
    return Colors.black45;
  }
}

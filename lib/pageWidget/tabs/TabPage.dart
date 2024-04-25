import 'package:flutter/material.dart';
import 'package:xgs_flutter_app/pageWidget/tabs/MyHomePage.dart';
import 'package:xgs_flutter_app/pageWidget/tabs/ThirdPartyLibrariesPage.dart';

class TabPage extends StatefulWidget {

  const TabPage({Key? key}) : super(key: key);
  @override
  State<TabPage> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<TabPage> {
  int _selectedIndex = 0;
  String _title = "首页";
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    // CassRouter.routes.forEach((key, value) {
    //   print('routes=====${key}对应：${value}');
    // });
    print("TabPage===========");

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
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(onPressed: (){_onItemTapped(0,"首页");}, icon: const Icon(Icons.home), color: _setIconColor(0)),
            IconButton(onPressed: (){_onItemTapped(1,"第三方库");}, icon: const Icon(Icons.business), color: _setIconColor(1)),
            const Text(''),
            IconButton(onPressed: (){_onItemTapped(2,"资讯");}, icon: const Icon(Icons.school), color: _setIconColor(2)),
            IconButton(onPressed: (){_onItemTapped(3,"设置");}, icon: const Icon(Icons.settings), color: _setIconColor(3))
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  // 初始化首页渲染组件
  final List<Widget> _widgetOptions = <Widget>[
    MyHomePage(),
    ThirdPartyLibrariesPage(),
    const Text(
      '资讯',
      style: optionStyle,
    ),
    const Text(
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

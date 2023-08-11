import 'package:flutter/material.dart';
import 'eventDemo/PointerMoveIndicator.dart';
import 'pageWidget/LayoutDemoPage.dart';
import 'pageWidget/customPaintTest/index.dart';
import 'pageWidget/tabs/TabPage.dart';
import 'pageWidget/NewRoutePage.dart';
import 'pageWidget/SaveRandomWordsPage.dart';
import 'pageWidget/TipRoutePage.dart';
import 'pageWidget/RandomWordsPage.dart';
import 'pageWidget/tabs/BasicWidgetDetailsPage.dart';
import 'basicWidget/TextDemoPage.dart';
import 'pageWidget/layoutWeight/ContainerDemoPage.dart';

class CassRouter {
  // 初始化路由
  static final String initialRoute = TabPage.routeName;
  // 路由配置表
  static final Map<String, WidgetBuilder> routes = {
    TabPage.routeName: (context) => TabPage(),
    LayoutDemoPage.routeName: (context) => LayoutDemoPage(),
    NewRoutePage.routeName: (context) => NewRoutePage(),
    RandomWordsPage.routeName: (context) => RandomWordsPage(),
    BasicWidgetDetailsPage.routeName: (context) => BasicWidgetDetailsPage(),
    TextDemoPage.routeName: (context) => TextDemoPage(),
    ContainerDemoPage.routeName: (context) => ContainerDemoPage(),
    PointerMoveIndicator.routeName: (context) => PointerMoveIndicator(x:0,y:10),
    SaveRandomWordsPage.routeName: (context) => SaveRandomWordsPage(words: ModalRoute.of(context).settings.arguments),
    CustomPaintTest.routeName: (context) => CustomPaintTest()
  };
  // 路由勾子
  static final RouteFactory generateRoute = (settings) {
    switch (settings.name) {
      case 'tipRoutePage':
        return MaterialPageRoute(builder: (context) => TipRoutePage(text: settings.arguments),maintainState: false,fullscreenDialog: false);
      // case 'saveRandomWordsPage':
      //   return MaterialPageRoute(builder: (context)=> SaveRandomWordsPage(words: settings.arguments));
      default:
        return null;
    }
  };

  // 路由404（即路由页面不存在）
  static final RouteFactory unKnowRoute = (settings) {
    return MaterialPageRoute(builder: (context){
      return NewRoutePage();
    });
  };
}

/*
MaterialPageRoute:构造函数的各个参数的意义
MaterialPageRoute({
  WidgetBuilder builder,
  RouteSettings settings,
  bool maintainState = true,
  bool fullscreenDialog = false,
})
builder：是一个WidgetBuilder类型的回调函数，它的作用是构建路由页的具体 内容，返回值是一个widget.我们通常要实现此回调，返回新的路由实例
settings：包含路由的配置信息，如路由名称，是否初始路由（首页）
maintainSate：默认情况下，当入栈一个新路由时，原来的路由仍然会保存在内存中，如果想在路由没用的时候释放其所占的资源，可以其为false
fullscreenDialog：表示新的路由页面是否是一个全屏的模态对话框，在IOS中，如果fullscreenDialog为true,新页面将会从屏幕底部滑入（而不是水平方向）
===================================================================================================
Navigator:路由管理组件
push：将给定的路由入栈，返回值是一个future对象，用以接收新路由出栈（即关闭）时的返回数据。
pop: 将栈顶路由出栈，result为页面关闭时返回给上一个页面的数据。
Navigator.push(BuildContext context,Route route) 等价于 Navigator.of(context).push(Route route);

========================================================================================
SaveRandomWordsPage和TipRoutePage是两种实现路由携带参数跳转的方式
 */
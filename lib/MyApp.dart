import 'package:flutter/material.dart';
import 'package:xgs_flutter_app/pageWidget/TabPage.dart';
import 'layoutStudy/LayoutDemo.dart';
import 'pageWidget/NewRoute.dart';
import 'pageWidget/SaveRandomWords.dart';
import 'pageWidget/TipRoute.dart';
import 'pageWidget/RandomWords.dart';
import 'uiElement/BasicWidget.dart';
import 'basicWidget/TextDemo.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      //  initialRoute: "NewRoute",
      // routes: {
      //   "NewRoute": (context) => NewRoute(),
      //  // "/": (context)=>MyHomePage(title: 'Flutter'),
      // "TipRoute": (context){return TipRoute(text: ModalRoute.of(context).settings.arguments);}
      // },
     home: TabPage(),
      onGenerateRoute: (settings) {
        var name = settings.name;
        var args = settings.arguments;
        // Do something here
        switch (name) {
          case '/':
            return MaterialPageRoute(builder: (context) => TabPage());
          case 'TipRoute':
            return MaterialPageRoute(builder: (context) => TipRoute(text: args),maintainState: false,fullscreenDialog: false);
          case 'NewRoute':
            return MaterialPageRoute(builder: (context) => NewRoute());
          case 'RandomWords':
            return MaterialPageRoute(builder: (context)=> RandomWords());
          case 'SaveRandomWords':
            return MaterialPageRoute(builder: (context)=> SaveRandomWords(words: args));
          case 'TextDemo':
            return MaterialPageRoute(builder: (context)=> TextDemo());
          case 'BasicWidget':
            return MaterialPageRoute(builder: (context)=> BasicWidget());
          case 'LayoutDemo':
            return MaterialPageRoute(builder: (context)=> LayoutDemo());
          default:
            return MaterialPageRoute(builder: (context) =>  NewRoute());
        }
      },
    );
  }
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
 */

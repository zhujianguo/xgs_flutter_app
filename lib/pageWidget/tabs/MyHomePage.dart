import 'package:flutter/material.dart';
import '../TipRoutePage.dart';
import '../layoutWeight/ContainerDemoPage.dart';

class MyHomePage extends StatefulWidget {
  static const String routeName = "myHomePage";
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:[
            TextButton(
              child:Text("基础组件"),
              onPressed: (){ },
            ),
            TextButton(
              child:Text("布局类组件"),
              onPressed: (){ },
            ),
            TextButton(
              child:Text("通过of(context).pushNamed跳转"),
              onPressed: (){
                Navigator.of(context).pushNamed("tipRoutePage",arguments: "我是小怪兽1号");
              },
            ),
            TextButton(
              child:Text("通过push跳转"),
              onPressed: () {
                //导航到新路由
                Navigator.push( context,
                    MaterialPageRoute(builder: (context) {
                      return TipRoutePage(
                        text: "我是小怪兽2号",
                      );
                    }));
              },
            ),
            TextButton(
              child:Text("路由跳转传参"),
              onPressed: () async {
                var result = await Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context){
                          return TipRoutePage(
                            text: "点击返回按钮携带参数回去",
                          );
                        },
                        fullscreenDialog: false));
                print("路由返回值：$result");
              },
            ),
            TextButton(
              child:Text("通过pushNamed跳转"),
              onPressed: () {
                Navigator.pushNamed(context, "newRoutePage");
              },
            ),
            TextButton(
              child:Text("官方演示Demo"),
              onPressed: () {
                Navigator.pushNamed(context, "randomWordsPage");
              },
            ),
            TextButton(
              child:Text("自定义导航样式"),
              onPressed: (){
                Navigator.of(context).pushNamed("layoutDemoPage");
              },
            ),
            TextButton(
              child:Text("404页面"),
              onPressed: (){
                Navigator.of(context).pushNamed("errorPage");
              },
            ),
            TextButton(
              child:Text("未能路由成功"),
              onPressed: (){
                Navigator.of(context).pushNamed("error");
              },
            ),
            TextButton(
              child:Text("LayoutWeight示例"),
              onPressed: (){
                Navigator.of(context).pushNamed("layoutDemoPage");
              },
            ),
            TextButton(
              child:Text("containerDemoPage"),
              onPressed: (){
                Navigator.of(context).pushNamed("containerDemoPage");
              },
            ),
            TextButton(
              child:Text("第五章：容器类组件"),
              onPressed: (){
                Navigator.of(context).pushNamed("containerDemoPage");
              },
            ),
            TextButton(
              child:Text("第六章：可滚动组件"),
              onPressed: (){
                Navigator.of(context).pushNamed("containerDemoPage");
              },
            ),
            TextButton(
              child:Text("第七章：功能型组件", style: TextStyle(color: Colors.red),),
              onPressed: (){
                Navigator.of(context).pushNamed("containerDemoPage");
              },
            ),
            TextButton(
              child:Text("第八章：事件处理与通知"),
              onPressed: (){
                Navigator.of(context).pushNamed("pointerMoveIndicator");
              },
            ),
            TextButton(
              child:Text("第九章：动画"),
              onPressed: (){
                Navigator.of(context).pushNamed("containerDemoPage");
              },
            ),
            TextButton(
              child:Text("第十章：自定义组件"),
              onPressed: (){
                Navigator.of(context).pushNamed("containerDemoPage");
              },
            ),
            TextButton(
              child:Text("第十一章：文件操作与网络请求"),
              onPressed: (){
                Navigator.of(context).pushNamed("containerDemoPage");
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('initState=====');
  }

  @override
  void didUpdateWidget(covariant MyHomePage oldWidget) {
    // 在widget重新构建时，Flutter框架会调用widget.canUpdate来检测widget树中同一位置的新旧节点，然后绝对是否更新
    // 如果widget.canUpdate返回true则会调用此回调。
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget===");
  }


  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("deactivate===");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("deactivate===");
  }

  @override
  void reassemble() {
    //专为开发调试而提供的，在热重载时会被调用，此回调载release模式下永远不会被调用
    super.reassemble();
    print("reassemble===");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("didChangeDependencies===");
  }
}

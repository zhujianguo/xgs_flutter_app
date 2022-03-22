import 'package:flutter/material.dart';
import 'TipRoutePage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            TextButton(
              child:Text("路由管理学习"),
              onPressed: (){ },
            ),
            TextButton(
              child:Text("动画学习"),
              onPressed: (){ },
            ),
            TextButton(
              child:Text("通过of(context).pushNamed跳转"),
              onPressed: (){
                Navigator.of(context).pushNamed("tipRoutePage",arguments: "我是小怪兽0");
              },
            ),
            TextButton(
              child:Text("通过push跳转"),
              onPressed: () {
                //导航到新路由
                Navigator.push( context,
                    MaterialPageRoute(builder: (context) {
                      return TipRoutePage(
                        text: "我是小怪兽1",
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
              child:Text("Flutter中构建布局"),
              onPressed: (){
                Navigator.of(context).pushNamed("layoutDemoPage");
              },
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
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

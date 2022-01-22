import 'package:flutter/material.dart';
import 'TipRoute.dart';

class MyHomePage extends StatefulWidget {
  // MyHomePage({Key key, this.title}) : super(key: key);
  // final String title;
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
              child:Text("通过of(context).pushNamed跳转"),
              onPressed: (){
                Navigator.of(context).pushNamed("TipRoute",arguments: "我是小怪兽0");
              },
            ),
            TextButton(
              child:Text("通过push跳转"),
              onPressed: () {
                //导航到新路由
                Navigator.push( context,
                    MaterialPageRoute(builder: (context) {
                      return TipRoute(
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
                          return TipRoute(
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
                Navigator.pushNamed(context, "NewRoute");
              },
            ),
            TextButton(
              child:Text("官方演示Demo"),
              onPressed: () {
                Navigator.pushNamed(context, "RandomWords");
              },
            ),
            TextButton(
              child:Text("Flutter中构建布局"),
              onPressed: (){
                Navigator.of(context).pushNamed("LayoutDemo");
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
}

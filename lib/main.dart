import 'package:flutter/material.dart';
import 'pageWidget/NewRoute.dart';
import 'pageWidget/TipRoute.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // routes: {
      //   "NewRoute": (context) => NewRoute(),
      //   "TipRoute": (context){return TipRoute(text: ModalRoute.of(context).settings.arguments);}
      // },
      // home: MyHomePage(title: '开思汽配'),
      onGenerateRoute: (settings) {
        var name = settings.name;
        var args = settings.arguments;
        print("settings===$settings");
        // Do something here
        switch (name) {
          case '/':
            return MaterialPageRoute(builder: (context) => MyHomePage(title: '开思汽配'));
          case 'TipRoute':
            return MaterialPageRoute(builder: (context) => TipRoute(text: args));
          case 'NewRoute':
            return MaterialPageRoute(builder: (context) => NewRoute());
          default:
            return MaterialPageRoute(builder: (context) =>  NewRoute());
        }
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child:Text("打开新世界1"),
              textColor: Colors.blue,
              onPressed: (){
                Navigator.of(context).pushNamed("TipRoute",arguments: "我是小怪兽0");
              },
            ),
            FlatButton(
              child:Text("打开新世界2"),
              textColor: Colors.blue,
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
            FlatButton(
              child:Text("打开新世界3"),
              textColor: Colors.blue,
              onPressed: () async {
                var result = await Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context){
                          return TipRoute(
                          text: "我是小怪兽1",
                          );
                        },
                        fullscreenDialog: false));
                print("路由返回值：$result");
              },
            ),
            FlatButton(
              child:Text("打开新世界NewRoute"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                // Navigator.push( context,
                //     MaterialPageRoute(builder: (context) {
                //       return NewRoute();
                //     }));
                Navigator.pushNamed(context, "NewRoute");
              },
            ),
            Text(
              '欢迎来到开思汽配世界',
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

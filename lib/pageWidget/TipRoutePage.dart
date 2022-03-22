import 'package:flutter/material.dart';

class TipRoutePage extends StatelessWidget {
  static const String routeName = "tipRoutePage";
  TipRoutePage({
    Key key,
    @required this.text,  // 接收一个text参数
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("提示"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(text),
              TextButton(
                onPressed: () => Navigator.pop(context, "我又回来了"),
                child: Text("返回"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

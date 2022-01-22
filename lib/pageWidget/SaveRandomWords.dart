import 'package:flutter/material.dart';

class SaveRandomWords extends StatelessWidget{

  SaveRandomWords({
    Key key,
    @required this.words,  // 接收一个text参数
  }) : super(key: key);
  final words;
  final _biggerFont = const TextStyle(fontSize: 18.0);
  @override
  Widget build(BuildContext context) {
    final tiles = words.map<Widget>((pair){
      return new ListTile(
        title: Text(
          pair.asPascalCase,
          style: _biggerFont,
        ),
      );
    });
    final divided = ListTile.divideTiles(context: context, tiles: tiles).toList();
    return new Scaffold(
      appBar: AppBar(
        title: Text("Saved Suggestions"),
      ),
      body: new ListView(children: divided),
    );
  }
}
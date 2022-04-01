import 'package:flutter/material.dart';
import 'package:xgs_flutter_app/customWidget/EcAppBar.dart';

class SaveRandomWordsPage extends StatelessWidget{
  static const String routeName = "saveRandomWordsPage";

  SaveRandomWordsPage({
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
      appBar: EcAppBar(
        leadingWidget: _leadingWidget(context),
        title: 'Saved Suggestions',
        navigationBarBackgroundColor: Colors.teal,
      ),
      body: new ListView(children: divided),
    );
  }

  Widget _leadingWidget(context) {
    return TextButton(
        onPressed: () => {
          debugDumpRenderTree(),
          Navigator.pop(context)
        },
        child: Text(
          '返回',
          style: TextStyle(color: Colors.white),
        ));
  }


}
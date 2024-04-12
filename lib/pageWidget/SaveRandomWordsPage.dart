import 'package:flutter/material.dart';
import 'package:xgs_flutter_app/customWidget/EcAppBar.dart';

class SaveRandomWordsPage extends StatelessWidget{

  const SaveRandomWordsPage({Key key, @required this.words}) : super(key: key); // 接收一个text参数
  final words;
  final _biggerFont = const TextStyle(fontSize: 18.0);
  @override
  Widget build(BuildContext context) {
    final tiles = words.map<Widget>((pair){
      return ListTile(
        title: Text(
          pair.asPascalCase,
          style: _biggerFont,
        ),
      );
    });
    final divided = ListTile.divideTiles(context: context, tiles: tiles).toList();
    return Scaffold(
      appBar: EcAppBar(
        leadingWidget: _leadingWidget(context),
        title: 'Saved Suggestions',
        navigationBarBackgroundColor: Colors.teal,
      ),
      body: ListView(children: divided),
    );
  }

  Widget _leadingWidget(context) {
    return TextButton(
        onPressed: () => {
         // debugDumpRenderTree(), ///flutter调试查看树
          Navigator.pop(context)
        },
        child: const Text(
          '返回',
          style: TextStyle(color: Colors.white),
        ));
  }


}
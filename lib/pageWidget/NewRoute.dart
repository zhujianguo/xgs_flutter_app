import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class NewRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final wordPair = new WordPair.random();
    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      ),
      body: Center(
        child: Text(wordPair.toString()),
      ),
    );
  }
}
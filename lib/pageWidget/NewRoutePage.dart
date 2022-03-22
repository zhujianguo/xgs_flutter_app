import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class NewRoutePage extends StatelessWidget{
  static const String routeName = "newRoutePage";
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
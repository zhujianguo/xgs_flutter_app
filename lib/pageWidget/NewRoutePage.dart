import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class NewRoutePage extends StatelessWidget{
  const NewRoutePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    final wordPair = WordPair.random();
    return Scaffold(
      appBar: AppBar(
        title: const Text("New route"),
      ),
      body: Center(
        child: Text(wordPair.toString()),
      ),
    );
  }
}
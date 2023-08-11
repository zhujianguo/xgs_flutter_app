import 'package:flutter/material.dart';

//按照惯例，widget 的构造函数参数应使用命名参数，命名参数中的必需要传的参数要添加required关键字，
//这样有利于静态代码分析器进行检查；在继承 widget 时，第一个参数通常应该是Key。
//另外，如果 widget 需要接收子 widget ，那么child或children参数通常应被放在参数列表的最后。
//同样是按照惯例， widget 的属性应尽可能的被声明为final，防止被意外改变。

class ContainerDemoPage extends StatelessWidget{

  const ContainerDemoPage({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          appBar: AppBar(
            title: const Text("ContainerDemo"),
            backgroundColor: Colors.teal,
          ),
          body: Container(
            width: 200,
            height: 500,
            color: Colors.blue,
          )
      );
  }
}

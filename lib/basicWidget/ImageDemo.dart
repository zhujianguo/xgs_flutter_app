import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('图片组件的使用'),
      ),
      body: _image(),
    );
  }

  Widget _image(){
    return Center(
      child: Column(
        children: [

        ],
      ),
    );
  }

}

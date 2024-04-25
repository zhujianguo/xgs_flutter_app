import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  const ImageDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text('图片组件的使用'),
      ),
      body: _image(),
    );
  }

  Widget _image(){
    return Center(
      child: Column(
        children: const [

        ],
      ),
    );
  }

}

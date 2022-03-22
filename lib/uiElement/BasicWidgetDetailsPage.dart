import 'package:flutter/material.dart';

class BasicWidgetDetailsPage extends StatelessWidget {
  static const String routeName = "basicWidgetDetailsPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            _myWidget(context, 'TextDemo', 'Text使用'),
            _myWidget(context, 'ButtonDemo', '按钮使用'),
            _myWidget(context, 'ImageDemo', 'Image使用'),
          ],
        ));
  }

  Widget _myWidget(BuildContext context, String routerName, String textInfo) {
    return Container(
      color: Colors.deepOrangeAccent,
      width: MediaQuery.of(context).size.width, // 获取屏幕宽
      padding: EdgeInsets.all(6.0), // 四个方向间隔6像素
      margin: EdgeInsets.only(bottom: 1), // 和下面的组件间隔1像素
      child: GestureDetector(
        child: Text(
          textInfo,
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.white,
            height: 2,
          ),
        ),
        onTap: () {
          Navigator.pushNamed(context, routerName);
        },
      ),
    );
  }
}

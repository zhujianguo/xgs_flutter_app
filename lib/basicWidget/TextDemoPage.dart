import 'package:flutter/material.dart';

class TextDemoPage extends StatelessWidget {
  static const String routeName = "textDemoPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text基本使用'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Text组件的使用",
              style: TextStyle(
                  color: Colors.purpleAccent,
                  decoration: TextDecoration.none,
                  //none 不显示装饰线条，underline字体下方，overline字体上方，lineThrough穿过字体
                  decorationStyle: TextDecorationStyle.double,
                  // solid直线，double双下划线，dotted 点下划线，dashed 虚线， wavy波浪线
                  decorationColor: Colors.green,
                  // 装饰线的颜色
                  fontSize: 18.0,
                  // 文字大小
                  fontStyle: FontStyle.normal,
                  // normal 正常， italic 斜体
                  fontWeight: FontWeight.w900,
                  // 字体加粗 bold, normal,w100~W900
                  letterSpacing: 2.0,
                  // 文字间的宽度
                  height: 1,
                  // 文本行与行的高度，作为字体大小的倍数（取值1～2，如1.2）
                  textBaseline: TextBaseline.alphabetic // 对齐文本的水平线
                  ),
              textAlign: TextAlign.center,
              // 文字对齐方式
              textDirection: TextDirection.ltr,
              // 文字排列方向 ltr左到右，rtl右到左
              locale: Locale('zh_CN'),
              // 用于选择区域特定字形的语言环境
              softWrap: false,
              // 软包裹，文字是否应该在软断行出断行(超出是否自动换行)
              overflow: TextOverflow.clip,
              // 处理视觉溢出：clip 剪切溢出的文本以修复其容器，ellipsis 使用省略号表示文本已溢出，fade 将溢出的文本淡化为透明
              textScaleFactor: 2.0,
              // 文字的缩放比例
              maxLines: 5,
              // 文本要跨越的可选最大行数
              semanticsLabel: 'text demo',
              // 图像的语义描述，用于向Android的TalkBack和iOS上的VoiceOver提供图像描述
              textWidthBasis: TextWidthBasis.longestLine,
            ),
            Text(
              "Text组件的使用Text组件的使用Text组件的使用Text组件的使用Text组件的使用Text组件的使用Text组件的使用Text组件的使用Text组件的使用",
              style: TextStyle(
                color: Colors.white,
                backgroundColor: Colors.lightBlue,
                // decoration: TextDecoration.underline, //none 不显示装饰线条，underline字体下方，overline字体上方，lineThrough穿过字体
                //  decorationStyle: TextDecorationStyle.double, // solid直线，double双下划线，dotted 点下划线，dashed 虚线， wavy波浪线
                decorationColor: Colors.green,
                // 装饰线的颜色
                fontSize: 18.0,
                // 文字大小
                fontStyle: FontStyle.normal,
                // normal 正常， italic 斜体
                fontWeight: FontWeight.w900,
                // 字体加粗 bold, normal,w100~W900
                letterSpacing: 0.0,
                // 文字间的宽度
                height: 1.5, // 文本行与行的高度，作为字体大小的倍数（取值1～2，如1.2）
              ),
              textAlign: TextAlign.left, // 文字对齐方式
              maxLines: 5, // 文本要跨越的可选最大行数
              overflow: TextOverflow.fade,
            )
          ],
        ),
      ),
    );
  }
}

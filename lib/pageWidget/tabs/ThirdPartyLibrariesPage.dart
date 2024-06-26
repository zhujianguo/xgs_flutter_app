import 'package:flutter/material.dart';

class ThirdPartyLibrariesPage extends StatelessWidget {
  static const String routeName = "thirdPartyLibrariesPage";

  const ThirdPartyLibrariesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        _myWidget(context, 'textDemoPage', 'Text使用'),
        _myWidget(context, 'buttonDemoPage', '按钮使用'),
        _myWidget(context, 'imageDemoPage', 'Image使用'),
        _myWidget(context, 'customPaintTest', 'customPaint自定义组件'),
      ],
    ));
  }

  Widget _myWidget(BuildContext context, String routerName, String textInfo) {
    return Container(
        color: Colors.white70,
        // 和下面的组件间隔1像素
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: Container(
                alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(20),
                  child: Text(
                    textInfo,
                    style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.teal,
                    ),
                  )),
              onTap: () {
                Navigator.pushNamed(context, routerName);
              },
            ),
            const Divider(
              height: 1,
              color: Colors.black12,
            ),
          ],
        ));
  }
}

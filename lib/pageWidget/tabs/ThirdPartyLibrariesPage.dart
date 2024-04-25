import 'package:flutter/material.dart';
import 'package:xgs_flutter_app/Route.dart';

class ThirdPartyLibrariesPage extends StatelessWidget {
  static const String routeName = "thirdPartyLibrariesPage";

  const ThirdPartyLibrariesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        _myWidget(context, Routers.textDemoPage, 'Text使用'),
        _myWidget(context, Routers.customPaintTest, 'customPaint 自定义组件'),
        _myWidget(context, Routers.filePickerPage, 'file_Picker 文件选择库'),
        _myWidget(context, Routers.inappwebviewPage, 'flutter_inappwebview WebView加载库'),
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

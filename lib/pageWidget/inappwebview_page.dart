import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class InappwebviewPage extends StatefulWidget {
  const InappwebviewPage({Key key}) : super(key: key);

  @override
  _InappwebviewPageState createState() => _InappwebviewPageState();
}

class _InappwebviewPageState extends State<InappwebviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InAppWebView Example"),
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: Uri.parse("https://mbd.baidu.com/newspage/data/dtlandingsuper?nid=dt_4760731992891664333")),
        initialOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(
            javaScriptEnabled: true,
          ),
        ),
        onWebViewCreated: (InAppWebViewController controller) {
          // WebView被创建后的操作
          // 可以通过controller来控制WebView的行为
        },
        onLoadStart: (controller, request){
          print("zhu===onLoadStart====");

        },
        onLoadStop: (controller, request) {
          // WebView加载页面完成时的操作
          print("zhu===onLoadStop====");
        },
        onLoadError: (controller, request, code, error) {
          // WebView加载页面出错时的操作
          print("zhu===onLoadError====");
        },
        onProgressChanged: (InAppWebViewController controller, int progress) {
          // WebView加载进度发生变化时的操作
          print("zhu===onProgressChanged====");
        },
        onScrollChanged: (controller, code, progress){
          // WebView滑动发生变化时
          print("zhu======onScrollChanged=======");
        },
      ),
    );
  }
}

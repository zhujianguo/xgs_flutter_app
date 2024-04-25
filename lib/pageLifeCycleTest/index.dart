import 'package:flutter/material.dart';

class PageLifeCycleTest extends StatefulWidget{
  const PageLifeCycleTest({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState()=>PageLifeCycleTestState();



}

class PageLifeCycleTestState extends State<PageLifeCycleTest>{
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void initState() {

    // 第一次被插入到widget树时会被调用，对于每个State对象，flutter框架只会调用一次该回调
    // 通常在这里做一些一次性操作，状态初始化。订阅事件等
    debugPrint("生命周期========initState");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    debugPrint("生命周期========didChangeDependencies");
    super.didChangeDependencies();
  }

  @override
  void activate() {
    debugPrint("生命周期========activate");
    super.activate();
  }

  @override
  void deactivate() {
    // 当 State 对象从树中被移除时，会调用此回调。在一些场景下，Flutter 框架会将 State 对象重新插到树中，如包含此 State 对象的子树在树的一个位置移动到另一个位置时（可以通过GlobalKey 来实现）。如果移除后没有重新插入到树中则紧接着会调用dispose()方法。
    debugPrint("生命周期========deactivate");
    super.deactivate();
  }

  @override
  void setState(VoidCallback fn) {
    debugPrint("生命周期========setState");
  }

  @override
  void didUpdateWidget(PageLifeCycleTest oldWidget) {
    debugPrint("生命周期========didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void reassemble() {
    // 此回调是专门为了开发调试而提供的，在热重载(hot reload)时会被调用，此回调在Release模式下永远不会被调用。
    debugPrint("生命周期========reassemble");
    super.reassemble();
  }

  @override
  void dispose() {
    // 当 State 对象从树中被永久移除时调用；通常在此回调中释放资源
    debugPrint("生命周期========dispose");
    super.dispose();
  }
}
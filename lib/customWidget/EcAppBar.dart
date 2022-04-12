import 'package:flutter/material.dart';

class EcAppBar extends StatefulWidget implements PreferredSizeWidget {
  final double contentHeight; //从外部指定高度
  Color navigationBarBackgroundColor; //设置导航栏背景的颜色
  Widget leadingWidget;
  Widget trailingWidget;
  String title;
  String routerName;

  EcAppBar({
    this.leadingWidget,
    @required this.title,
    this.contentHeight = 44,
    this.navigationBarBackgroundColor = Colors.red,
    this.trailingWidget,
  }) : super();

  @override
  State<StatefulWidget> createState() {
    return _EcAppBarState();
  }

  @override
  Size get preferredSize => Size.fromHeight(contentHeight);
}

/// 这里没有直接用SafeArea，而是用Container包装了一层
/// 因为直接用SafeArea，会把顶部的statusBar区域留出空白
/// 外层Container会填充SafeArea，指定外层Container背景色也会覆盖原来SafeArea的颜色
///     var statusheight = MediaQuery.of(context).padding.top;  获取状态栏高度

class _EcAppBarState extends State<EcAppBar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.navigationBarBackgroundColor,
      child: SafeArea(
        top: true,
        child: Container(
            decoration: UnderlineTabIndicator(
              borderSide: BorderSide(width: 1.0, color: Color(0xFFeeeeee)),
            ),
            height: widget.contentHeight,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  left: 0,
                  child: Container(
                    padding: EdgeInsets.only(left: 5),
                    child: _leadingWidget(),
                  ),
                ),
                new Container(
                  child: Text(widget.title,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.only(right: 5),
                    child: widget.trailingWidget,
                  ),
                ),
              ],
            )),
      ),
    );
  }

  Widget _leadingWidget() {
    if (widget.leadingWidget != null) {
      return widget.leadingWidget;
    }
    return Container(
      height: 50,
      alignment: Alignment.centerLeft,
      child: IconButton(
          onPressed: () => {
          if(widget.routerName != null){
          Navigator.pop(context, widget.routerName)
      }else{
    Navigator.pop(context)
    }
    },
      icon: Icon(Icons.arrow_back_ios),
      color: Colors.white,
    ),);
  }
}

import 'package:flutter/material.dart';

class PointerMoveIndicator extends StatefulWidget {
  final double x;
  final double y;

  const PointerMoveIndicator({Key key, this.x, this.y}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PointerMoveIndicatorState();
  }
}

class PointerMoveIndicatorState extends State<PointerMoveIndicator> {
  PointerEvent _event;

  @override
  Widget build(BuildContext context) {
    print("zhu===" + '${widget.x}');
    print("zhu===" + '${widget.y}');
    return Scaffold(
        appBar: AppBar(
          title: const Text("事件学习"),
        ),
        body: GestureDetector(
            onTap: () => {print("我被点击了")},
            child: Column(
              children: [
                Listener(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.blue,
                    width: 500,
                    height: 200,
                    child: Text('''localPosition:${_event?.localPosition ?? ''}
                    position:${_event?.position ?? ''}''',
                        style: const TextStyle(color: Colors.red, fontSize: 20)),
                  ),
                  onPointerDown: (PointerDownEvent event) =>
                      setState(() => _event = event),
                  onPointerMove: (PointerMoveEvent event) =>
                      setState(() => _event = event),
                  onPointerUp: (PointerUpEvent event) =>
                      setState(() => _event = event),
                ),
                Listener(
                  child: AbsorbPointer(
                    child: Listener(
                      child: Container(
                        color: Colors.red,
                        width: 200.0,
                        height: 100.0,
                        child: const Text("AbsorbPointer包裹"),
                      ),
                      onPointerDown: (event)=>print("in"),
                    ),
                  ),
                  onPointerDown: (event)=>print("up"),
                ),
                Listener(
                    child: Listener(
                      child: Container(
                        color: Colors.amber,
                        width: 200.0,
                        height: 100.0,
                        child: const Text("纯Listener"),
                      ),
                      onPointerDown: (event)=>print("in"),
                  ),
                  onPointerDown: (event)=>print("up"),
                ),
                Listener(
                  child: IgnorePointer(
                    child: Listener(
                      child: Container(
                        color: Colors.teal,
                        width: 200.0,
                        height: 100.0,
                        child: const Text("IgnorePointer包裹"),
                      ),
                      onPointerDown: (event)=>print("in"),
                    ),
                  ),
                  onPointerDown: (event)=>print("up"),
                )
              ],
            )));
  }

  @override
  void initState() {
    super.initState();
  }
}

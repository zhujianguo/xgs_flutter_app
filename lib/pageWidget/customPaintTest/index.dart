import 'package:flutter/material.dart';

import 'widget/HeartIconPainter.dart';

class CustomPaintTest extends StatelessWidget {

  const CustomPaintTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("customPaintTest"),
      ),
      body: Center(
        child:
            Container(
              color: Colors.blue,
              // width: 200,
              // height: 200,
              // alignment: Alignment.center,
              child:
                  SizedBox(
                    width: 300,
                    height: 300,
                    child:
                    CustomPaint(
                      painter: HeartIconPainter(),
                      child: const Text("sdfds",textAlign: TextAlign.center),
                    ),
                  )
            )
      ),
    );
  }

}
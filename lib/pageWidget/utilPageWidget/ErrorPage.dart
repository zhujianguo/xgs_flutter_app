
import 'package:flutter/material.dart';
import 'package:xgs_flutter_app/common/res/ImagePath.dart';
import 'package:xgs_flutter_app/customWidget/EcAppBar.dart';

class ErrorPage extends StatelessWidget{
  static const String routeName = "errorPage";

  const ErrorPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: EcAppBar(
        title: "反馈页",
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImagePath.error_page_image,
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
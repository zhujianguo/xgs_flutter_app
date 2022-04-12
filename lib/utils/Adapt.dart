import 'package:flutter/material.dart';
import 'dart:ui';

class Adapt {
  static MediaQueryData mediaQueryData = MediaQueryData.fromWindow(window);
  static double _width = mediaQueryData.size.width;
  static double _height = mediaQueryData.size.height;
  static int hello = 23;
  static screenW(){
    return _width;
  }
  static screenH(){
    return _height;
  }
}
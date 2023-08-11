import 'package:flutter/material.dart';
import 'dart:ui';

class Adapt {
  static MediaQueryData mediaQueryData = MediaQueryData.fromWindow(window);
  static double width = mediaQueryData.size.width;
  static double height = mediaQueryData.size.height;
  double topBarHeight = mediaQueryData.padding.top;
}
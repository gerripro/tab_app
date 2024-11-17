import 'package:flutter/material.dart';

abstract class ColorUtils {
  /// gets Color from "FFFFFF" type string
  static Color getColorFromString(String colorStr) {
    return Color(int.parse(colorStr,radix: 16)+ 0xFF000000);
  }
}
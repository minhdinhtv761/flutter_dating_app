// Flutter imports:
import 'package:flutter/material.dart';

class ColorConstants {
  // Basic
  static const black = Color(0xFF000000);
  static const white = Color(0xFFFFFFFF);
  static const lightGrey = Color(0xFFCDCDCD);
  static const darkGrey = Color(0xFF7D848F);
  static const red = Color(0xFFF44336);

  // Gradient
  static const lightGradientStart = Color(0xFFFD267A);
  static const lightGradientEnd = Color(0xFFFF6036);
}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}

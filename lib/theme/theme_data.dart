// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../shared/shared.dart';

class ThemeConfig {
  static ThemeData createTheme({
    required Brightness brightness,
  }) {
    return ThemeData(
      brightness: brightness,
      colorScheme: ColorScheme(
        brightness: brightness,
        primary: ColorConstants.white, // Button, Text, Icon, etc.
        onPrimary: ColorConstants.black, // Text on Button, etc.
        secondary: ColorConstants.lightGrey,
        onSecondary: ColorConstants.darkGrey,
        error: ColorConstants.red,
        onError: ColorConstants.white,
        background: ColorConstants.white, // Scaffold background, etc.
        onBackground: ColorConstants.lightGrey,
        surface: ColorConstants.white, // AppBar background, etc.
        onSurface: ColorConstants.darkGrey,
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size(
            double.infinity,
            CommonConstants.baseMediumButtonSize,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(
            double.infinity,
            CommonConstants.baseMediumButtonSize,
          ),
          side: BorderSide(
            color: ColorConstants.white,
            strokeAlign: BorderSide.strokeAlignInside,
            width: CommonConstants.baseStrokeWidth,
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          minimumSize: const Size(
            64, // minimumSize default of Button Style
            CommonConstants.baseMediumButtonSize,
          ),
        ),
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          fontSize: CommonConstants.baseLargeText,
        ),
        bodyMedium: TextStyle(
          fontSize: CommonConstants.baseMediumText,
        ),
        bodySmall: TextStyle(
          fontSize: CommonConstants.baseSmallText,
        ),
        labelLarge: TextStyle(
          fontSize: CommonConstants.baseMediumText,
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          fontSize: CommonConstants.baseSmallText,
        ),
        labelSmall: TextStyle(
          fontSize: CommonConstants.baseExtraSmallText,
        ),
      ),
      typography: Typography.material2021(
        platform: Platform.isIOS ? TargetPlatform.iOS : TargetPlatform.android,
      ),
      useMaterial3: true,
    );
  }

  static ThemeData get lightTheme => createTheme(
        brightness: Brightness.light,
      );
}

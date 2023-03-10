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
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          foregroundColor: ColorConstants.black,
          backgroundColor: ColorConstants.white,
          minimumSize: const Size(
            double.infinity,
            CommonConstants.baseMediumButtonSize,
          ),
          side: BorderSide(
            color: ColorConstants.white,
            strokeAlign: BorderSide.strokeAlignCenter,
            width: CommonConstants.baseStrokeWidth,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: ColorConstants.white,
          minimumSize: const Size(
            double.infinity,
            CommonConstants.baseMediumButtonSize,
          ),
          side: BorderSide(
            color: ColorConstants.white,
            strokeAlign: BorderSide.strokeAlignCenter,
            width: CommonConstants.baseStrokeWidth,
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: ColorConstants.white,
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

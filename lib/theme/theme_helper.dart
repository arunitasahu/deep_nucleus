import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.blue50,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: colorScheme.onError,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodySmall: TextStyle(
          color: appTheme.black900,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: colorScheme.onError,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: colorScheme.onError,
          fontSize: 10.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onError,
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: colorScheme.onError,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF0A43B1),
    primaryContainer: Color(0XFFF0F0F0),
    secondary: Color(0XFFF0F0F0),
    secondaryContainer: Color(0XFF0A43B1),
    tertiary: Color(0XFFF0F0F0),
    tertiaryContainer: Color(0XFF0A43B1),

    // Background colors
    background: Color(0XFFF0F0F0),

    // Surface colors
    surface: Color(0XFFF0F0F0),
    surfaceTint: Color(0X26FFFFFF),
    surfaceVariant: Color(0XFF0A43B1),

    // Error colors
    error: Color(0X26FFFFFF),
    errorContainer: Color(0XFF0A43B1),
    onError: Color(0XFF303030),
    onErrorContainer: Color(0X26FFFFFF),

    // On colors(text colors)
    onBackground: Color(0XFF1F2A4A),
    onInverseSurface: Color(0XFF303030),
    onPrimary: Color(0X26FFFFFF),
    onPrimaryContainer: Color(0XFF1F2A4A),
    onSecondary: Color(0XFF1F2A4A),
    onSecondaryContainer: Color(0X26FFFFFF),
    onTertiary: Color(0XFF1F2A4A),
    onTertiaryContainer: Color(0X26FFFFFF),

    // Other colors
    outline: Color(0X26FFFFFF),
    outlineVariant: Color(0XFFF0F0F0),
    scrim: Color(0XFFF0F0F0),
    shadow: Color(0X26FFFFFF),

    // Inverse colors
    inversePrimary: Color(0XFFF0F0F0),
    inverseSurface: Color(0X26FFFFFF),

    // Pending colors
    onSurface: Color(0XFF1F2A4A),
    onSurfaceVariant: Color(0X26FFFFFF),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF000000);

  // Blue
  Color get blue50 => Color(0XFFEEF3FF);
  Color get blue700 => Color(0XFF2E68D8);
  Color get blue70001 => Color(0XFF2D67D7);

  // BlueGray
  Color get blueGray400 => Color(0XFF888888);

  // Gray
  Color get gray50 => Color(0XFFF9F9F9);
  Color get gray500 => Color(0XFFA7A7A7);
  Color get gray50001 => Color(0XFF909090);

  // Green
  Color get green600 => Color(0XFF34A453);

  // LightGreen
  Color get lightGreenA700 => Color(0XFF64D60A);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

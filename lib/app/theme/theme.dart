import 'package:connect_app/app/resources/resources.dart';
import 'package:flutter/material.dart';

abstract class ConnectAppTheme {
  static const _defaultFontFamily = "Poppins";

  static const ColorScheme _lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF287DFA),
    onPrimary: Color(0xFFFFFFFF),
    secondary: Color(0xFF03CA10),
    onSecondary: Color(0xFFFFFFFF),
    error: Color(0xFFE44343),
    onError: Color(0xFFFFFFFF),
    surface: Color(0xFFF7FAFC),
    onSurface: Color(0xFF000000),
  );

  static const ColorScheme _darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF0FA4F9),
    onPrimary: Color(0xFFFFFFFF),
    secondary: Color(0xFF03CA10),
    onSecondary: Color(0xFFFFFFFF),
    error: Color(0xFFE44343),
    onError: Color(0xFFFFFFFF),
    surface: Color(0xFF1D233C),
    onSurface: Color(0xFFFFFFFF),
  );

  static ThemeData get lightTheme => _getTheme(_lightColorScheme);

  static ThemeData get darkTheme => _getTheme(_darkColorScheme);

  static ThemeData _getTheme(ColorScheme colorScheme) {
    return ThemeData(
      scaffoldBackgroundColor: colorScheme.surface,
      fontFamily: _defaultFontFamily,
      colorScheme: colorScheme,
      brightness: colorScheme.brightness,
      textTheme: _textTheme(colorScheme),
      elevatedButtonTheme: _elevatedButtonTheme(colorScheme),
      outlinedButtonTheme: _outlinedButtonTheme(colorScheme),
      inputDecorationTheme: _inputDecorationTheme(colorScheme),
    );
  }

  static TextTheme _textTheme(ColorScheme colorScheme) {
    return const TextTheme(
      displayLarge: TextStyle(fontSize: 40, fontWeight: FontWeight.w700, height: 1.5),
      displayMedium: TextStyle(fontSize: 36, fontWeight: FontWeight.w700, height: 1.5),
      displaySmall: TextStyle(fontSize: 32, fontWeight: FontWeight.w700, height: 1.5),
      headlineLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, height: 1.5),
      headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, height: 1.5),
      headlineSmall: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, height: 1.5),
      titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, height: 1.5),
      titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, height: 1.5),
      titleSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, height: 1.5),
      bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, height: 1.5),
      bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, height: 1.5),
      bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, height: 1.5),
      labelLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, height: 1.5),
      labelMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, height: 1.5),
      labelSmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, height: 1.5),
    );
  }

  static ElevatedButtonThemeData _elevatedButtonTheme(ColorScheme colorScheme) {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        shape: const RoundedRectangleBorder(borderRadius: ShapeBorderRadius.medium),
        elevation: 0.0,
        padding: const EdgeInsets.all(Spacing.large),
        shadowColor: colorScheme.primary,
        maximumSize: LayoutConstants.buttonSize,
      ),
    );
  }

  static OutlinedButtonThemeData _outlinedButtonTheme(ColorScheme colorScheme) {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(borderRadius: ShapeBorderRadius.medium),
        elevation: 0.0,
        padding: const EdgeInsets.all(Spacing.large),
        shadowColor: colorScheme.primary,
        maximumSize: LayoutConstants.buttonSize,
      ),
    );
  }

  static InputDecorationTheme _inputDecorationTheme(ColorScheme colorScheme) {
    final iconColor = WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.error)) return colorScheme.error;
      if (states.contains(WidgetState.focused)) return colorScheme.primary;
      return colorScheme.onSurfaceVariant;
    });

    final border = MaterialStateOutlineInputBorder.resolveWith((states) {
      final defaultBorder = OutlineInputBorder(
        borderRadius: ShapeBorderRadius.small,
        borderSide: BorderSide(color: colorScheme.outline),
      );

      if (states.contains(WidgetState.error)) {
        if (states.contains(WidgetState.hovered)) {
          return defaultBorder.copyWith(
            borderSide: BorderSide(color: colorScheme.errorContainer, width: 2.0),
          );
        }
        if (states.contains(WidgetState.focused)) {
          return defaultBorder.copyWith(
            borderSide: BorderSide(color: colorScheme.error, width: 2.0),
          );
        }
        return defaultBorder.copyWith(
          borderSide: BorderSide(color: colorScheme.error),
        );
      }
      if (states.contains(WidgetState.hovered)) {
        return defaultBorder.copyWith(
          borderSide: BorderSide(color: colorScheme.primary.withOpacity(0.6), width: 2.0),
        );
      }
      if (states.contains(WidgetState.focused)) {
        return defaultBorder.copyWith(
          borderSide: BorderSide(color: colorScheme.primary, width: 2.0),
        );
      }
      return defaultBorder;
    });

    return InputDecorationTheme(
      errorMaxLines: 3,
      helperMaxLines: 3,
      hintStyle: const TextStyle(fontWeight: FontWeight.w500),
      errorStyle: const TextStyle(fontWeight: FontWeight.w500),
      helperStyle: const TextStyle(fontWeight: FontWeight.w500),
      contentPadding: const EdgeInsets.symmetric(horizontal: Spacing.normal, vertical: Spacing.normal),
      constraints: LayoutConstants.formField,
      border: border,
      filled: false,
      suffixIconColor: iconColor,
      prefixIconColor: iconColor,
      floatingLabelBehavior: FloatingLabelBehavior.always,
    );
  }
}

import 'package:flutter/material.dart';
import "package:myapp/ui/_core/app_colors.dart";

abstract class AppTheme {
  static ThemeData appTheme = ThemeData.dark().copyWith(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStatePropertyAll(Colors.white),
        backgroundColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.pressed)) {
            return Colors.grey;
          } else if (states.contains(WidgetState.pressed)) {
            return const Color.fromARGB(255, 163, 114, 85);
          }
          return const Color.fromARGB(255, 100, 50, 21);
        }),
      ),
    ),
  );
}

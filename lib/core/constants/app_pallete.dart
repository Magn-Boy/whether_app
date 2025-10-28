import 'package:flutter/material.dart';
import 'package:whether_app/core/constants/app_colors.dart';

class AppPallete {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkTheme,
  );
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.lightTheme,
  );
}

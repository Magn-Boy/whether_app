import 'package:flutter/material.dart';
import 'package:whether_app/core/constants/app_pallete.dart';
import 'package:whether_app/core/theme/theme_manager.dart';
import 'package:whether_app/home/presentation/home_screen.dart';

class MyApp extends StatelessWidget {
  final ThemeManager themeManager;
  const MyApp(this.themeManager, {super.key});
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: themeManager,
      builder: (_, __) => MaterialApp(
        theme: AppPallete.lightTheme,
        darkTheme: AppPallete.darkTheme,
        themeMode: themeManager.themeMode,
        initialRoute: '/home',
        routes: {'/home': (context) => HomeScreen(themeManager: themeManager)},
      ),
    );
  }
}

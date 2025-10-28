import 'package:flutter/material.dart';
import 'package:whether_app/core/theme/theme_manager.dart';

class HomeScreen extends StatelessWidget {
  final ThemeManager themeManager;
  const HomeScreen({super.key, required this.themeManager});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Whether'),
        centerTitle: true,
        actions: [
          Switch(
            value: themeManager.themeMode == ThemeMode.dark,
            onChanged: (isDark) => themeManager.toggleTheme(isDark),
          ),
        ],
      ),
    );
  }
}

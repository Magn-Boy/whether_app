import 'package:flutter/material.dart';
import 'package:whether_app/app.dart';

import 'core/theme/theme_manager.dart' show ThemeManager;

void main() {
  final themeManager = ThemeManager();
  runApp(MyApp(themeManager));
}

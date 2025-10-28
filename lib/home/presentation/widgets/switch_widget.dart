import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class SwitchWidget extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const SwitchWidget({super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: value,
      onChanged: (newState) {
        onChanged(newState);
      },
      activeColor: AppColors.darkTheme,
      activeTrackColor: AppColors.lightTheme,
      inactiveThumbColor: AppColors.darkTheme,
      inactiveTrackColor: AppColors.lightTheme,
    );
  }
}

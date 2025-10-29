import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whether_app/core/constants/app_colors.dart';
import 'package:whether_app/core/constants/assets.dart';
import 'package:whether_app/core/theme/theme_manager.dart';

class HomeScreen extends StatelessWidget {
  final ThemeManager themeManager;
  const HomeScreen({super.key, required this.themeManager});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: null,
        body: Padding(
          padding: const EdgeInsets.all(40),
          child: SizedBox.expand(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Switch(
                      value: themeManager.themeMode == ThemeMode.dark,
                      onChanged: (isDark) => themeManager.toggleTheme(isDark),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: TextField(
                        decoration: const InputDecoration(
                          hintText: 'Введите что-нибудь...',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Текущая локация'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.silverChalice,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.tundora.withOpacity(0.4),
                              offset: const Offset(0, 12),
                              blurRadius: 20,
                              spreadRadius: -2,
                            ),
                            BoxShadow(
                              color: AppColors.tundora.withOpacity(0.2),
                              offset: const Offset(0, 30),
                              blurRadius: 60,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 58,
                            horizontal: 108,
                          ),
                          child: Column(
                            children: [
                              Text('Слоним'),
                              Text('09:03'),
                              Text('Вторник, 29 Окт'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 55),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.silverChalice,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.tundora.withOpacity(0.4),
                              offset: const Offset(0, 12),
                              blurRadius: 20,
                              spreadRadius: -2,
                            ),
                            BoxShadow(
                              color: AppColors.tundora.withOpacity(0.2),
                              offset: const Offset(0, 30),
                              blurRadius: 60,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 20,
                          ),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text('75°F'),
                                  Text('Feels like: 22°C'),

                                  Row(
                                    children: [
                                      SvgPicture.asset(Assets.sunsetWhite),
                                      Column(
                                        children: [
                                          Text('Sunset'),
                                          Text('20:37 AM'),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 48,
                                        height: 48,
                                        child: Image.asset(Assets.sunriseWhite),
                                      ),
                                      Column(
                                        children: [
                                          Text('Sunset'),
                                          Text('20:37 AM'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

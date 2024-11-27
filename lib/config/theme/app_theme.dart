import 'package:flutter/material.dart';
import 'package:islami_app/config/theme/app_colors.dart';
import 'package:islami_app/config/theme/app_text_styles.dart';

class AppTheme {
  static ThemeData themeMode = ThemeData(
    scaffoldBackgroundColor: AppColors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.black,
      titleTextStyle: AppTextStyles.text20GoldBold,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: AppColors.gold),
    ),
    fontFamily: 'Janna-LT',
  );
}

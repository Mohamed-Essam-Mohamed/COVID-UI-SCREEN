import 'package:covid_app3/src/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
      primaryColor: AppColors.kPrimaryColor,
      scaffoldBackgroundColor: AppColors.kBackgroundColor,
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.kPrimaryColor.withOpacity(.03),
      ));
}

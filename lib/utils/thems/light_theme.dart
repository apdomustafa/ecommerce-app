import 'package:flutter/material.dart';

import '../colors/app_colors.dart';

class AppThemes {
  static ThemeData get lightTheme {
    return ThemeData(
        primaryColor: AppColors.primaryColor,
        scaffoldBackgroundColor: Colors.white,
        brightness: Brightness.light);
  }
}

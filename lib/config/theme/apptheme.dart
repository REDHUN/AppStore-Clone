import 'package:appstoreclone/core/app_constants/colors.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
    fontFamily: "Muli",
    appBarTheme: appBarTheme(),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
      elevation: 0,
      titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w900,
          color: AppColors.appBarTextColor),
      backgroundColor: AppColors.appBarColor);
}

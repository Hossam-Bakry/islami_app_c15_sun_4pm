import 'package:flutter/material.dart';

import 'colors.dart';

abstract class ThemeManager {
  static ThemeData lightTheme = ThemeData(
    primaryColor: ColorsPallete.primaryColor,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsPallete.quranDetailsColor,
      iconTheme: IconThemeData(color: ColorsPallete.primaryColor),
      titleTextStyle: TextStyle(
        fontFamily: "Janna",
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: ColorsPallete.primaryColor,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: ColorsPallete.primaryColor,
      selectedIconTheme: IconThemeData(color: Colors.white),
      selectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w700,
      ),
      unselectedIconTheme: IconThemeData(color: Colors.black),
      showSelectedLabels: true,
      showUnselectedLabels: false,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontFamily: "Janna",
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      titleMedium: TextStyle(
        fontFamily: "Janna",
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      bodyLarge: TextStyle(
        fontFamily: "Janna",
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: ColorsPallete.titleColor,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Janna",
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        fontFamily: "Janna",
        fontSize: 12,
        fontWeight: FontWeight.w700,
        color: ColorsPallete.titleColor,
      ),
    ),
  );
}

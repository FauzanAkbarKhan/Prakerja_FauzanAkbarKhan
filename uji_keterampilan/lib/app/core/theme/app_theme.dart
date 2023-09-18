// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

final kPadding = EdgeInsets.all(10.sp);
final kRadius = BorderRadius.circular(5.r);

const backgroundColor = Color(0xFF121212);

const textColor = Colors.white;
const primaryColor = Color(0xFFFFEB3B);
const surfaceColor = Colors.white10;
const errorColor = Colors.red;
const shadowColor = Colors.grey;

ThemeData darkTheme = ThemeData(
  primaryColor: primaryColor,
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: primaryColor,
    onPrimary: Colors.white,
    secondary: Colors.blue.shade900,
    onSecondary: Colors.yellow.withAlpha(100),
    error: errorColor,
    onError: errorColor.withAlpha(100),
    background: backgroundColor,
    onBackground: Colors.white,
    surface: backgroundColor,
    onSurface: surfaceColor,
  ),
  scaffoldBackgroundColor: backgroundColor,
  textTheme: GoogleFonts.poppinsTextTheme(
    const TextTheme(
      displayLarge: TextStyle(color: textColor),
      displayMedium: TextStyle(color: textColor),
      displaySmall: TextStyle(color: textColor),
      headlineLarge: TextStyle(color: textColor),
      headlineMedium: TextStyle(color: textColor),
      headlineSmall: TextStyle(color: textColor),
      bodyLarge: TextStyle(color: textColor),
      bodyMedium: TextStyle(color: textColor),
      bodySmall: TextStyle(color: textColor),
      titleSmall: TextStyle(color: textColor),
      titleMedium: TextStyle(color: textColor),
      titleLarge: TextStyle(color: textColor),
      labelSmall: TextStyle(color: textColor),
      labelMedium: TextStyle(color: textColor),
      labelLarge: TextStyle(color: textColor),
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: surfaceColor,
    unselectedIconTheme: IconThemeData(color: shadowColor),
    unselectedLabelStyle: TextStyle(color: Colors.red),
    selectedItemColor: primaryColor,
    selectedIconTheme: IconThemeData(color: primaryColor),
    selectedLabelStyle: TextStyle(color: primaryColor),
    unselectedItemColor: shadowColor,
  ),
  appBarTheme: const AppBarTheme(backgroundColor: surfaceColor),
  canvasColor: surfaceColor,
);

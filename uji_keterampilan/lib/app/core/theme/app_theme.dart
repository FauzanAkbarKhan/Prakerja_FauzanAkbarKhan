// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

final kPadding = EdgeInsets.all(10.sp);
final kRadius = BorderRadius.circular(5.r);

const backgroundColor = Color(0xFF121212);

const textColor = Colors.white;
const primaryColor = Colors.amber;
const surfaceColor = Colors.white10;
const errorColor = Colors.red;
const shadowColor = Colors.grey;
const darkGrey = Color(0xFF2D2D2D);

const BoxShadow kBoxShadow = BoxShadow(
  color: backgroundColor,
  offset: Offset(0.0, 1.0), //(x,y)
  blurRadius: 1.0,
);

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
    surface: surfaceColor,
    onSurface: Colors.white,
    shadow: shadowColor,
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
    backgroundColor: darkGrey,
    unselectedIconTheme: IconThemeData(color: shadowColor),
    unselectedLabelStyle: TextStyle(color: Colors.red),
    selectedItemColor: primaryColor,
    selectedIconTheme: IconThemeData(color: primaryColor),
    selectedLabelStyle: TextStyle(color: primaryColor),
    unselectedItemColor: shadowColor,
  ),
  appBarTheme: const AppBarTheme(backgroundColor: darkGrey),
  canvasColor: surfaceColor,
  tabBarTheme: TabBarTheme(
    overlayColor: MaterialStateProperty.all<Color>(Colors.amber),
    indicatorColor: Colors.amber,
  ),
);

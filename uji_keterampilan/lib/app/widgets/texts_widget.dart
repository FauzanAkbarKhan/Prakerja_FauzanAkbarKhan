import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uji_keterampilan/app/core/theme/app_theme.dart';

class Texts {
  static Widget titleBold(
    String text, {
    double? fontSize,
    Color? color,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }

  static Widget titleReg(
    String text, {
    double? fontSize,
    Color? color,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.normal,
        color: color,
      ),
    );
  }

  static Widget subTitleBold(
    String text, {
    double? fontSize,
    Color? color,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14.sp,
        color: color ?? textColor.withAlpha(214),
        fontWeight: FontWeight.bold,
      ),
    );
  }

  static Widget subTitleReg(
    String text, {
    double? fontSize,
    Color? color,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14.sp,
        color: color ?? textColor.withAlpha(214),
      ),
    );
  }

  static Widget category(
    String text, {
    double? fontSize,
    Color? color,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14.sp,
        color: color,
      ),
    );
  }

  static Widget body(
    String text, {
    double? fontSize,
    Color? color,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 12.sp,
        color: color,
      ),
    );
  }

  static Widget button(
    String text, {
    double? fontSize,
    Color? color,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14.sp,
        color: color ?? Colors.black,
      ),
    );
  }

  static Widget headline(
    String text, {
    double? fontSize,
    Color? color,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 20.sp,
        color: color ?? Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

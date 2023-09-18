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
      maxLines: 2,
      style: TextStyle(
        overflow: TextOverflow.ellipsis,
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
      maxLines: 2,
      style: TextStyle(
        overflow: TextOverflow.ellipsis,
        fontSize: 14.sp,
        fontWeight: FontWeight.normal,
        color: color,
      ),
      textAlign: TextAlign.start,
    );
  }

  static Widget subTitleBold(
    String text, {
    double? fontSize,
    Color? color,
  }) {
    return Text(
      text,
      maxLines: 2,
      style: TextStyle(
        overflow: TextOverflow.ellipsis,
        fontSize: 12.sp,
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
      maxLines: 2,
      style: TextStyle(
        overflow: TextOverflow.ellipsis,
        fontSize: 12.sp,
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
      maxLines: 2,
      style: TextStyle(
        overflow: TextOverflow.ellipsis,
        fontSize: 12.sp,
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
      maxLines: 2,
      style: TextStyle(
        overflow: TextOverflow.ellipsis,
        fontSize: 10.sp,
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
      maxLines: 2,
      style: TextStyle(
        overflow: TextOverflow.ellipsis,
        fontSize: 12.sp,
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
      maxLines: 2,
      style: TextStyle(
        overflow: TextOverflow.ellipsis,
        fontSize: 18.sp,
        color: color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

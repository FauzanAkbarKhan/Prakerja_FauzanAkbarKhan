import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:uji_keterampilan/app/core/theme/app_theme.dart';
import 'package:uji_keterampilan/app/widgets/texts_widget.dart';

class Containers {
  static Widget titledContainer({
    required String title,
    required Widget child,
    EdgeInsetsGeometry? padding,
    Color? backgroundColor,
    BorderRadius? borderRadius,
  }) {
    return Container(
      padding: padding ?? kPadding,
      decoration: BoxDecoration(
        color: backgroundColor ?? surfaceColor,
        borderRadius: borderRadius ?? kRadius,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10.w),
                width: 4.w,
                height: 20.h,
                decoration: BoxDecoration(
                  color: Get.theme.primaryColor,
                  borderRadius: BorderRadius.circular(100.r),
                ),
              ),
              Texts.titleBold(title),
            ],
          ),
          child
        ],
      ),
    );
  }
}

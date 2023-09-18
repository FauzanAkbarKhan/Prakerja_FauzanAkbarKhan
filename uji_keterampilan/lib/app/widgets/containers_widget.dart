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
    EdgeInsetsGeometry? margin,
    Color? backgroundColor,
    BorderRadius? borderRadius,
    String? subtitle,
    Widget? trailing,
    double? height,
    double? width,
  }) {
    return Container(
      margin: margin ?? EdgeInsets.symmetric(vertical: 5.h),
      height: height,
      width: width,
      padding: padding ?? kPadding,
      decoration: BoxDecoration(
        color: backgroundColor ?? surfaceColor,
        borderRadius: borderRadius,
        boxShadow: const [kBoxShadow],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
              const Spacer(),
              trailing ?? const SizedBox(),
            ],
          ),
          subtitle != null
              ? Padding(
                  padding: EdgeInsets.all(10.h),
                  child: Texts.subTitleReg(subtitle),
                )
              : SizedBox(
                  height: 10.h,
                ),
          child
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Loadings {
  static Widget defaultLoading({
    Color? color,
    double? size,
  }) {
    return LoadingAnimationWidget.waveDots(
      color: color ?? Get.theme.primaryColor,
      size: size ?? 40.sp,
    );
  }
}

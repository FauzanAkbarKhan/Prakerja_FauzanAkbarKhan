import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:uji_keterampilan/app/core/theme/app_theme.dart';

class CarouselsController {
  CarouselController? controller;
  int? itemCount;
  Function(BuildContext, int, int)? itemBuilder;

  buildImage({String? urlImage, int? index}) => Container(
        margin: EdgeInsets.only(bottom: 10.h),
        width: Get.width.w,
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(10.r),
          color: Get.theme.colorScheme.background.withAlpha(200),
        ),
        child: CachedNetworkImage(
          imageUrl: '$urlImage',
          fit: BoxFit.cover,
          placeholder: (context, url) => Container(
            width: Get.width.w,
            height: Get.width.w / 2.w,
            color: surfaceColor,
          ),
          errorWidget: (context, url, error) => Icon(
            Icons.image_not_supported,
            color: Get.theme.shadowColor,
            size: 50.sp,
          ),
        ),
      );

  defaultOption({
    double? height,
    bool? enableInfiniteScroll,
    bool? autoPlay,
    double viewportFraction = 1,
  }) =>
      CarouselOptions(
        // height: height ?? Get.height.h / 2 + 100.w, // full
        height: height ?? Get.width.w / 1.5,
        enableInfiniteScroll: enableInfiniteScroll ?? true,
        viewportFraction: viewportFraction,
        autoPlay: autoPlay ?? true,
      );
}

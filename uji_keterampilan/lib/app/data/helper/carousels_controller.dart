import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:uji_keterampilan/app/widgets/image_widget.dart';

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
        child: DefaultImageWidget(
          urlImage: urlImage,
          fit: BoxFit.contain,
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
        height: height ?? Get.width.w,
        enableInfiniteScroll: enableInfiniteScroll ?? true,
        viewportFraction: viewportFraction,
        autoPlay: autoPlay ?? true,
      );
}

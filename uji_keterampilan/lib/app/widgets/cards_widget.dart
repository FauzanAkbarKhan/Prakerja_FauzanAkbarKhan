import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:uji_keterampilan/app/widgets/image_widget.dart';
import 'package:uji_keterampilan/app/widgets/texts_widget.dart';

import '../core/theme/app_theme.dart';

class Cards {
  static Widget movieCards({
    required String? urlImage,
    required String? title,
    double? aggregateRating,
    String? releaseYear,
    String? duration,
    String? rating,
    Color? backgroundColor,
  }) {
    return Container(
      margin: EdgeInsets.only(
        right: 10.w,
        top: 2.w,
        bottom: 2.h,
      ),
      width: Get.width.w / 2.6.w,
      height: Get.width.w / 1.2.w,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white12,
        borderRadius: kRadius,
        boxShadow: const [kBoxShadow],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: Get.width.w,
            height: 200.h,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.r),
                topRight: Radius.circular(5.r),
              ),
              child: Stack(
                alignment: Alignment.topLeft,
                fit: StackFit.expand,
                children: [
                  DefaultImageWidget(urlImage: urlImage),
                  Positioned(
                    left: -2.w,
                    child:

                        // Container(
                        //   width: 30.w,
                        //   height: 40.h,
                        //   decoration: BoxDecoration(
                        //     color: Get.theme.colorScheme.background.withAlpha(150),
                        //   ),
                        //   child: Icon(
                        //     Icons.add,
                        //     color: Get.theme.textTheme.bodyMedium?.color,
                        //   ),
                        // ),
                        Stack(
                      alignment: Alignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/bookmark.svg',
                          width: 40.w,
                          colorFilter: ColorFilter.mode(
                            Get.theme.colorScheme.background.withAlpha(150),
                            BlendMode.srcIn,
                          ),
                        ),
                        Icon(
                          Icons.add,
                          color: Get.theme.textTheme.bodySmall?.color,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: kPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Get.theme.primaryColor,
                      ),
                      SizedBox(width: 5.w),
                      Texts.subTitleReg('$aggregateRating')
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.h),
                    child: Texts.titleReg('$title'),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 5.w),
                        child: Texts.body('$releaseYear'),
                      ),
                      rating?.isNotEmpty == true
                          ? Padding(
                              padding: EdgeInsets.only(right: 5.w),
                              child: Texts.body('$rating'),
                            )
                          : const SizedBox(),
                      Texts.body('$duration'),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

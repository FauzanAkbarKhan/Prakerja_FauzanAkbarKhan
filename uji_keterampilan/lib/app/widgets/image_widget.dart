import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:uji_keterampilan/app/core/theme/app_theme.dart';

import '../data/providers/api.dart';

class DefaultImageWidget extends StatelessWidget {
  final String? urlImage;
  final BoxFit? fit;
  const DefaultImageWidget({super.key, required this.urlImage, this.fit});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      httpHeaders: const {"Authorization": apiToken},
      imageUrl: '$urlImage',
      fit: fit ?? BoxFit.cover,
      placeholder: (context, url) => Container(
        width: Get.width.w,
        height: 200.h,
        color: surfaceColor,
      ),
      errorWidget: (context, url, error) => Icon(
        Icons.image_not_supported,
        color: Get.theme.shadowColor,
        size: 50.sp,
      ),
    );
  }
}

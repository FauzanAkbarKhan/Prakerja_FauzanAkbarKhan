import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:uji_keterampilan/app/core/theme/app_theme.dart';
import 'package:uji_keterampilan/app/widgets/containers_widget.dart';
import 'package:uji_keterampilan/app/widgets/image_widget.dart';
import 'package:uji_keterampilan/app/widgets/texts_widget.dart';

import '../controllers/video_controller.dart';

class VideoView extends GetView<VideoController> {
  const VideoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<VideoController>(
        init: VideoController(),
        builder: (controller) {
          return Scaffold(
            body: SafeArea(
              child: ListView(
                children: [
                  Containers.titledContainer(
                    title: 'Popular trailers',
                    trailing: Texts.titleReg(
                      'SEE ALL',
                      color: Colors.blue,
                    ),
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 10.w),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Get.theme.colorScheme.surface),
                                  borderRadius: BorderRadius.circular(100.r),
                                ),
                                child: ButtonBar(
                                  children: [
                                    Expanded(child: Texts.subTitleReg('Movie')),
                                    Container(
                                      width: 1.w,
                                      color: Get.theme.colorScheme.surface,
                                      height: 18.h,
                                    ),
                                    Expanded(
                                        child: Texts.subTitleReg('TV Series')),
                                    Container(
                                      width: 1.w,
                                      color: Get.theme.colorScheme.surface,
                                      height: 18.h,
                                    ),
                                    Expanded(
                                        child: Texts.subTitleReg('TV Episode')),
                                    Container(
                                      width: 1.w,
                                      color: Get.theme.colorScheme.surface,
                                      height: 18.h,
                                    ),
                                    Expanded(
                                        child: Texts.subTitleReg('More...')),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Get.theme.colorScheme.surface),
                                  borderRadius: BorderRadius.circular(100.r),
                                ),
                                child: ButtonBar(
                                  children: [
                                    Expanded(child: Texts.subTitleReg('Movie')),
                                    Container(
                                      width: 1.w,
                                      color: Get.theme.colorScheme.surface,
                                      height: 18.h,
                                    ),
                                    Expanded(
                                        child: Texts.subTitleReg('TV Series')),
                                    Container(
                                      width: 1.w,
                                      color: Get.theme.colorScheme.surface,
                                      height: 18.h,
                                    ),
                                    Expanded(
                                        child: Texts.subTitleReg('TV Episode')),
                                    Container(
                                      width: 1.w,
                                      color: Get.theme.colorScheme.surface,
                                      height: 18.h,
                                    ),
                                    Expanded(
                                        child: Texts.subTitleReg('More...')),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                              controller.dataCarousel?.data?.length ?? 0,
                              (index) => Container(
                                margin: EdgeInsets.only(
                                  right: 10.w,
                                  bottom: 2.h,
                                ),
                                width: Get.width.w / 1.2.w,
                                height: 200.h,
                                decoration: BoxDecoration(
                                  color: Get.theme.colorScheme.surface,
                                  borderRadius: kRadius,
                                  boxShadow: const [kBoxShadow],
                                ),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Expanded(
                                        child: DefaultImageWidget(
                                            urlImage: controller.dataCarousel
                                                ?.data?[index].imageUrl)),
                                    Padding(
                                      padding: kPadding,
                                      child: Texts.subTitleReg(
                                          '${controller.dataCarousel?.data?[index].title}'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Containers.titledContainer(
                    title: 'Recent trailers',
                    trailing: Texts.titleReg(
                      'SEE ALL',
                      color: Colors.blue,
                    ),
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 10.w),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Get.theme.colorScheme.surface),
                                  borderRadius: BorderRadius.circular(100.r),
                                ),
                                child: ButtonBar(
                                  children: [
                                    Expanded(child: Texts.subTitleReg('Movie')),
                                    Container(
                                      width: 1.w,
                                      color: Get.theme.colorScheme.surface,
                                      height: 18.h,
                                    ),
                                    Expanded(
                                        child: Texts.subTitleReg('TV Series')),
                                    Container(
                                      width: 1.w,
                                      color: Get.theme.colorScheme.surface,
                                      height: 18.h,
                                    ),
                                    Expanded(
                                        child: Texts.subTitleReg('TV Episode')),
                                    Container(
                                      width: 1.w,
                                      color: Get.theme.colorScheme.surface,
                                      height: 18.h,
                                    ),
                                    Expanded(
                                        child: Texts.subTitleReg('More...')),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Get.theme.colorScheme.surface),
                                  borderRadius: BorderRadius.circular(100.r),
                                ),
                                child: ButtonBar(
                                  children: [
                                    Expanded(child: Texts.subTitleReg('Movie')),
                                    Container(
                                      width: 1.w,
                                      color: Get.theme.colorScheme.surface,
                                      height: 18.h,
                                    ),
                                    Expanded(
                                        child: Texts.subTitleReg('TV Series')),
                                    Container(
                                      width: 1.w,
                                      color: Get.theme.colorScheme.surface,
                                      height: 18.h,
                                    ),
                                    Expanded(
                                        child: Texts.subTitleReg('TV Episode')),
                                    Container(
                                      width: 1.w,
                                      color: Get.theme.colorScheme.surface,
                                      height: 18.h,
                                    ),
                                    Expanded(
                                        child: Texts.subTitleReg('More...')),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                              controller.dataCarousel?.data?.length ?? 0,
                              (index) => Container(
                                margin: EdgeInsets.only(
                                  right: 10.w,
                                  bottom: 2.h,
                                ),
                                width: Get.width.w / 1.2.w,
                                height: 200.h,
                                decoration: BoxDecoration(
                                  color: Get.theme.colorScheme.surface,
                                  borderRadius: kRadius,
                                  boxShadow: const [kBoxShadow],
                                ),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Expanded(
                                      child: DefaultImageWidget(
                                        urlImage: controller.dataCarousel
                                            ?.data?[index].imageUrl,
                                      ),
                                    ),
                                    Padding(
                                      padding: kPadding,
                                      child: Texts.subTitleReg(
                                          '${controller.dataCarousel?.data?[index].title}'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Containers.titledContainer(
                    title: 'Interviews and more',
                    subtitle:
                        'Supercuts and conversations with trending celebs',
                    trailing: Texts.titleReg(
                      'SEE ALL',
                      color: Colors.blue,
                    ),
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 10.w),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Get.theme.colorScheme.surface),
                                  borderRadius: BorderRadius.circular(100.r),
                                ),
                                child: ButtonBar(
                                  children: [
                                    Expanded(child: Texts.subTitleReg('Movie')),
                                    Container(
                                      width: 1.w,
                                      color: Get.theme.colorScheme.surface,
                                      height: 18.h,
                                    ),
                                    Expanded(
                                        child: Texts.subTitleReg('TV Series')),
                                    Container(
                                      width: 1.w,
                                      color: Get.theme.colorScheme.surface,
                                      height: 18.h,
                                    ),
                                    Expanded(
                                        child: Texts.subTitleReg('TV Episode')),
                                    Container(
                                      width: 1.w,
                                      color: Get.theme.colorScheme.surface,
                                      height: 18.h,
                                    ),
                                    Expanded(
                                        child: Texts.subTitleReg('More...')),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Get.theme.colorScheme.surface),
                                  borderRadius: BorderRadius.circular(100.r),
                                ),
                                child: ButtonBar(
                                  children: [
                                    Expanded(child: Texts.subTitleReg('Movie')),
                                    Container(
                                      width: 1.w,
                                      color: Get.theme.colorScheme.surface,
                                      height: 18.h,
                                    ),
                                    Expanded(
                                        child: Texts.subTitleReg('TV Series')),
                                    Container(
                                      width: 1.w,
                                      color: Get.theme.colorScheme.surface,
                                      height: 18.h,
                                    ),
                                    Expanded(
                                        child: Texts.subTitleReg('TV Episode')),
                                    Container(
                                      width: 1.w,
                                      color: Get.theme.colorScheme.surface,
                                      height: 18.h,
                                    ),
                                    Expanded(
                                        child: Texts.subTitleReg('More...')),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                              controller.dataCarousel?.data?.length ?? 0,
                              (index) => Container(
                                margin: EdgeInsets.only(
                                  right: 10.w,
                                  bottom: 2.h,
                                ),
                                width: Get.width.w / 1.2.w,
                                height: 200.h,
                                decoration: BoxDecoration(
                                  color: Get.theme.colorScheme.surface,
                                  borderRadius: kRadius,
                                  boxShadow: const [kBoxShadow],
                                ),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Expanded(
                                        child: DefaultImageWidget(
                                            urlImage: controller.dataCarousel
                                                ?.data?[index].imageUrl)),
                                    Padding(
                                      padding: kPadding,
                                      child: Texts.subTitleReg(
                                          '${controller.dataCarousel?.data?[index].title}'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Containers.titledContainer(
                    title: 'What to watch',
                    subtitle: 'IMDb recommendations for movies and TV shows',
                    trailing: Texts.titleReg(
                      'SEE ALL',
                      color: Colors.blue,
                    ),
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 10.w),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Get.theme.colorScheme.surface),
                                  borderRadius: BorderRadius.circular(100.r),
                                ),
                                child: ButtonBar(
                                  children: [
                                    Expanded(child: Texts.subTitleReg('Movie')),
                                    Container(
                                      width: 1.w,
                                      color: Get.theme.colorScheme.surface,
                                      height: 18.h,
                                    ),
                                    Expanded(
                                        child: Texts.subTitleReg('TV Series')),
                                    Container(
                                      width: 1.w,
                                      color: Get.theme.colorScheme.surface,
                                      height: 18.h,
                                    ),
                                    Expanded(
                                        child: Texts.subTitleReg('TV Episode')),
                                    Container(
                                      width: 1.w,
                                      color: Get.theme.colorScheme.surface,
                                      height: 18.h,
                                    ),
                                    Expanded(
                                        child: Texts.subTitleReg('More...')),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Get.theme.colorScheme.surface),
                                  borderRadius: BorderRadius.circular(100.r),
                                ),
                                child: ButtonBar(
                                  children: [
                                    Expanded(child: Texts.subTitleReg('Movie')),
                                    Container(
                                      width: 1.w,
                                      color: Get.theme.colorScheme.surface,
                                      height: 18.h,
                                    ),
                                    Expanded(
                                        child: Texts.subTitleReg('TV Series')),
                                    Container(
                                      width: 1.w,
                                      color: Get.theme.colorScheme.surface,
                                      height: 18.h,
                                    ),
                                    Expanded(
                                        child: Texts.subTitleReg('TV Episode')),
                                    Container(
                                      width: 1.w,
                                      color: Get.theme.colorScheme.surface,
                                      height: 18.h,
                                    ),
                                    Expanded(
                                        child: Texts.subTitleReg('More...')),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                              controller.dataCarousel?.data?.length ?? 0,
                              (index) => Container(
                                margin: EdgeInsets.only(
                                  right: 10.w,
                                  bottom: 2.h,
                                ),
                                width: Get.width.w / 1.2.w,
                                height: 200.h,
                                decoration: BoxDecoration(
                                  color: Get.theme.colorScheme.surface,
                                  borderRadius: kRadius,
                                  boxShadow: const [kBoxShadow],
                                ),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Expanded(
                                        child: DefaultImageWidget(
                                            urlImage: controller.dataCarousel
                                                ?.data?[index].imageUrl)),
                                    Padding(
                                      padding: kPadding,
                                      child: Texts.subTitleReg(
                                          '${controller.dataCarousel?.data?[index].title}'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Containers.titledContainer(
                    title: 'Entertainments news',
                    subtitle: 'Trending news for fans',
                    trailing: Texts.titleReg(
                      'SEE ALL',
                      color: Colors.blue,
                    ),
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 10.w),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Get.theme.colorScheme.surface),
                                  borderRadius: BorderRadius.circular(100.r),
                                ),
                                child: ButtonBar(
                                  children: [
                                    Expanded(child: Texts.subTitleReg('Movie')),
                                    Container(
                                      width: 1.w,
                                      color: Get.theme.colorScheme.surface,
                                      height: 18.h,
                                    ),
                                    Expanded(
                                        child: Texts.subTitleReg('TV Series')),
                                    Container(
                                      width: 1.w,
                                      color: Get.theme.colorScheme.surface,
                                      height: 18.h,
                                    ),
                                    Expanded(
                                        child: Texts.subTitleReg('TV Episode')),
                                    Container(
                                      width: 1.w,
                                      color: Get.theme.colorScheme.surface,
                                      height: 18.h,
                                    ),
                                    Expanded(
                                        child: Texts.subTitleReg('More...')),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Get.theme.colorScheme.surface),
                                  borderRadius: BorderRadius.circular(100.r),
                                ),
                                child: ButtonBar(
                                  children: [
                                    Expanded(child: Texts.subTitleReg('Movie')),
                                    Container(
                                      width: 1.w,
                                      color: Get.theme.colorScheme.surface,
                                      height: 18.h,
                                    ),
                                    Expanded(
                                        child: Texts.subTitleReg('TV Series')),
                                    Container(
                                      width: 1.w,
                                      color: Get.theme.colorScheme.surface,
                                      height: 18.h,
                                    ),
                                    Expanded(
                                        child: Texts.subTitleReg('TV Episode')),
                                    Container(
                                      width: 1.w,
                                      color: Get.theme.colorScheme.surface,
                                      height: 18.h,
                                    ),
                                    Expanded(
                                        child: Texts.subTitleReg('More...')),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                              controller.dataCarousel?.data?.length ?? 0,
                              (index) => Container(
                                margin: EdgeInsets.only(
                                  right: 10.w,
                                  bottom: 2.h,
                                ),
                                width: Get.width.w / 1.2.w,
                                height: 200.h,
                                decoration: BoxDecoration(
                                  color: Get.theme.colorScheme.surface,
                                  borderRadius: kRadius,
                                  boxShadow: const [kBoxShadow],
                                ),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Expanded(
                                        child: DefaultImageWidget(
                                            urlImage: controller.dataCarousel
                                                ?.data?[index].imageUrl)),
                                    Padding(
                                      padding: kPadding,
                                      child: Texts.subTitleReg(
                                          '${controller.dataCarousel?.data?[index].title}'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}

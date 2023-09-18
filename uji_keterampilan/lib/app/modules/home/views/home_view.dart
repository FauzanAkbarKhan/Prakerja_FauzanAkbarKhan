import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:uji_keterampilan/app/core/theme/app_theme.dart';
import 'package:uji_keterampilan/app/data/providers/api.dart';
import 'package:uji_keterampilan/app/widgets/carousels_widget.dart';
import 'package:uji_keterampilan/app/widgets/loading_widget.dart';
import 'package:uji_keterampilan/app/widgets/texts_widget.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(
        Get.find<ApiProvider>(),
      ),
      builder: (controller) {
        return Scaffold(
          body: controller.isLoading
              ? Center(
                  child: Loadings.defaultLoading(),
                )
              : ListView(
                  children: [
                    CarouselSlider.builder(
                      itemCount: 5,
                      itemBuilder: (context, index, realIndex) {
                        var data = controller.weekTop10?.data?[index];
                        return controller.carouselsController.buildImage(
                            urlImage: data?.primaryImage?.imageUrl,
                            index: index);
                      },
                      options: controller.carouselsController.defaultOption(),
                    ),
                    //   Container(
                    //     width: MediaQuery.of(context).size.width,
                    //     padding: EdgeInsets.symmetric(horizontal: 10.0.sp),
                    //     decoration: const BoxDecoration(color: Colors.amber),
                    //     child: Text(
                    //       'text $index',
                    //       style: const TextStyle(fontSize: 16.0),
                    //     ),
                    //   ),
                    // options: CarouselOptions(
                    //   height: Get.width.w / 1.5.w,
                    //   enableInfiniteScroll: true,
                    //   viewportFraction: 1,
                    // ),
                    // ),
                    Padding(
                      padding: EdgeInsets.all(10.h),
                      child: Texts.headline(
                        'Feature Today',
                        color: Get.theme.primaryColor,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.sp),
                      height: Get.width.w / 4.w,
                      decoration: const BoxDecoration(
                        color: surfaceColor,
                      ),
                      child: const Column(
                        children: [
                          // SingleChildScrollView(
                          //   scrollDirection: Axis.horizontal,
                          //   child: Row(
                          //     children: List.generate(
                          //       5,
                          //       (index) => Image.network('src'),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    )
                  ],
                ),
        );
      },
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:uji_keterampilan/app/data/providers/api.dart';
import 'package:uji_keterampilan/app/widgets/cards_widget.dart';
import 'package:uji_keterampilan/app/widgets/containers_widget.dart';
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
          body: SafeArea(
            child: controller.isLoading
                ? Center(
                    child: Loadings.defaultLoading(),
                  )
                : ListView(
                    children: [
                      CarouselSlider.builder(
                        itemCount: controller.dataCarousel?.data?.length ?? 0,
                        itemBuilder: (context, index, realIndex) {
                          var data = controller.dataCarousel?.data?[index];
                          return controller.carouselsController.buildImage(
                            urlImage: '${data?.imageUrl}',
                            index: index,
                          );
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
                      Containers.titledContainer(
                        title: 'Fan Favourites',
                        subtitle: "This week's top TV and movies",
                        trailing: InkWell(
                          onTap: () {},
                          child: Texts.titleReg(
                            'SEE ALL',
                            color: Colors.blue,
                          ),
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                              controller.dataCarousel?.data?.length ?? 0,
                              (index) {
                                var data =
                                    controller.dataCarousel?.data?[index];
                                return Cards.movieCards(
                                  urlImage: '${data?.imageUrl}',
                                  title: data?.title,
                                  releaseYear: '${data?.releaseDate}',
                                  aggregateRating: data?.vote,
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.h),
                        child: Texts.headline(
                          "Explore movies and TV shows",
                          color: Get.theme.primaryColor,
                        ),
                      ),
                      Containers.titledContainer(
                        title: 'In theatres',
                        trailing: InkWell(
                          onTap: () {},
                          child: Texts.titleReg(
                            'SEE ALL',
                            color: Colors.blue,
                          ),
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                              controller.dataCarousel?.data?.length ?? 0,
                              (index) {
                                var data =
                                    controller.dataCarousel?.data?[index];
                                return Cards.movieCards(
                                  urlImage: '${data?.imageUrl}',
                                  title: data?.title,
                                  releaseYear: '${data?.releaseDate}',
                                  aggregateRating: data?.vote,
                                );
                              },
                            ),
                          ),
                        ),
                      ),

                      Containers.titledContainer(
                        title: 'Top Box Office (ID)',
                        subtitle: 'Weekend of 15 - 17 September',
                        trailing: InkWell(
                          onTap: () {},
                          child: Texts.titleReg(
                            'SEE ALL',
                            color: Colors.blue,
                          ),
                        ),
                        child: Column(
                          children: List.generate(
                            controller.dataCarousel?.data?.length ?? 0,
                            (index) => Row(
                              children: [
                                Expanded(
                                    child: Texts.subTitleBold('${index + 1}')),
                                Expanded(
                                  flex: 28,
                                  child: ListTile(
                                    leading: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          'assets/images/bookmark.svg',
                                          width: 40.w,
                                          colorFilter: ColorFilter.mode(
                                            Get.theme.colorScheme.background
                                                .withAlpha(150),
                                            BlendMode.srcIn,
                                          ),
                                        ),
                                        Icon(
                                          Icons.add,
                                          color: Get
                                              .theme.textTheme.bodySmall?.color,
                                        ),
                                      ],
                                    ),
                                    title: Texts.subTitleBold(
                                        '${controller.dataCarousel?.data?[index].title}'),
                                    subtitle: Texts.body(
                                        '${controller.dataCarousel?.data?[index].vote}'),
                                    trailing: InkWell(
                                      onTap: () {},
                                      child: CircleAvatar(
                                        backgroundColor:
                                            Get.theme.colorScheme.surface,
                                        child: const Icon(
                                          Icons.local_movies_rounded,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      Containers.titledContainer(
                        title: 'In theatres',
                        trailing: InkWell(
                          onTap: () {},
                          child: Texts.titleReg(
                            'SEE ALL',
                            color: Colors.blue,
                          ),
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                              controller.dataCarousel?.data?.length ?? 0,
                              (index) {
                                var data =
                                    controller.dataCarousel?.data?[index];
                                return Cards.movieCards(
                                  urlImage: '${data?.imageUrl}',
                                  title: data?.title,
                                  releaseYear: '${data?.releaseDate}',
                                  aggregateRating: data?.vote,
                                );
                              },
                            ),
                          ),
                        ),
                      ),

                      // Containers.titledContainer(
                      //     height: 400.h,
                      //     title: 'Fan Favourites',
                      //     subtitle: "This week's top TV and movies",
                      //     trailing: InkWell(
                      //       onTap: () {},
                      //       child: Texts.titleReg(
                      //         'SEE ALL',
                      //         color: Colors.blue,
                      //       ),
                      //     ),
                      //     child: Column(
                      //       children: [
                      //         Container(
                      //           color: Colors.transparent,
                      //           child: TabBar(
                      //             isScrollable: true,
                      //             unselectedLabelColor: Get
                      //                 .theme.textTheme.bodySmall?.color
                      //                 ?.withAlpha(100),
                      //             indicatorColor: Get.theme.primaryColor,
                      //             labelColor: Get.theme.primaryColor,
                      //             controller: controller.tabController,
                      //             tabs: const [
                      //               Tab(
                      //                 text: 'Netflix',
                      //               ),
                      //               Tab(
                      //                 text: 'Prime Video',
                      //               ),
                      //               Tab(
                      //                 text: 'Tab name',
                      //               ),
                      //               Tab(
                      //                 text: 'Tab name',
                      //               ),
                      //               Tab(
                      //                 text: 'Tab name',
                      //               ),
                      //             ],
                      //           ),
                      //         ),
                      //         SizedBox(
                      //           height: 200.h,
                      //           child: TabBarView(
                      //             controller: controller.tabController,
                      //             children: const [
                      //               Center(
                      //                 child: Text('Tab 1 Content'),
                      //               ),
                      //               Center(
                      //                 child: Text('Tab 2 Content'),
                      //               ),
                      //               Center(
                      //                 child: Text('Tab 3 Content'),
                      //               ),
                      //               Center(
                      //                 child: Text('Tab 3 Content'),
                      //               ),
                      //               Center(
                      //                 child: Text('Tab 3 Content'),
                      //               ),
                      //             ],
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      // ),
                    ],
                  ),
          ),
        );
      },
    );
  }
}

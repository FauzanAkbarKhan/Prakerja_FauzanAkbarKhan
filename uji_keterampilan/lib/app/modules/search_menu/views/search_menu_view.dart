import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:uji_keterampilan/app/core/theme/app_theme.dart';
import 'package:uji_keterampilan/app/widgets/texts_widget.dart';

import '../controllers/search_menu_controller.dart';

class SearchMenuView extends GetView<SearchMenuController> {
  const SearchMenuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchMenuController>(
        init: SearchMenuController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Get.theme.colorScheme.background,
                  ),
                  hintText: 'Search IMDb',
                ),
              ),
            ),
            body: ListView(
              padding: kPadding,
              children: [
                SearchMovieCategoryWidget(
                  icon: Icons.history,
                  title: 'Recent',
                  trailing: Texts.titleReg(
                    'CLEAR',
                    color: Colors.blue,
                  ),
                ),
                const SearchMovieCategoryWidget(
                  icon: Icons.local_movies_rounded,
                  title: 'Movies',
                ),
                const SearchMovieCategoryWidget(
                  icon: Icons.tv,
                  title: 'Streaming & TV',
                ),
                const SearchMovieCategoryWidget(
                  icon: Icons.people_alt_sharp,
                  title: 'Celebs',
                ),
                const SearchMovieCategoryWidget(
                  icon: Icons.stars_rounded,
                  title: 'Awards & Events',
                ),
                const SearchMovieCategoryWidget(
                  icon: Icons.public,
                  title: 'Community',
                ),
              ],
            ),
          );
        });
  }
}

class SearchMovieCategoryWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget? trailing;
  const SearchMovieCategoryWidget({
    super.key,
    required this.icon,
    required this.title,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 40.h),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: Get.theme.primaryColor,
                size: 40.sp,
              ),
              SizedBox(width: 10.w),
              Texts.headline(title),
              const Spacer(),
              trailing ?? const SizedBox(),
            ],
          ),
          SizedBox(height: 20.h),
          GridView.builder(
            itemCount: 8,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20.h,
              crossAxisSpacing: 20.w,
              // childAspectRatio: Get.width / Get.height * 1.2.w,
            ),
            itemBuilder: (context, index) => Container(
              padding: EdgeInsets.all(10.sp),
              decoration: BoxDecoration(
                color: Get.theme.colorScheme.surface,
                borderRadius: kRadius,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Get.theme.colorScheme.surface,
                      borderRadius: kRadius,
                    ),
                    width: 120.w,
                    height: 120.w,
                  ),
                  Texts.body('Popular movie trailers')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

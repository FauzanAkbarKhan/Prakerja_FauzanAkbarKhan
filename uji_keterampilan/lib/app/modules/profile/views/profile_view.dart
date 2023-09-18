import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:uji_keterampilan/app/widgets/buttons_widget.dart';
import 'package:uji_keterampilan/app/widgets/containers_widget.dart';
import 'package:uji_keterampilan/app/widgets/texts_widget.dart';

import '../../../core/constant/value.dart';
import '../../../widgets/cards_widget.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: Get.width.w,
            padding: EdgeInsets.all(10.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.account_circle,
                      color: Get.theme.primaryColor,
                      size: 30.sp,
                    ),
                    SizedBox(width: 10.w),
                    Texts.titleBold('Sign In'),
                    const Spacer(),
                    Icon(
                      Icons.settings,
                      color: Get.theme.textTheme.bodySmall?.color,
                      size: 30.sp,
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Texts.subTitleReg(
                    'Get personalized recommendations and keep track of what to watch.'),
                SizedBox(height: 10.h),
                Buttons.defaultButton(
                  onPressed: () {},
                  child: Texts.button('Sign in / Sign up'),
                ),
              ],
            ),
          ),
          Containers.titledContainer(
            title: 'Recently viewd',
            trailing: InkWell(
              onTap: () {},
              child: Texts.titleReg(
                'SEE ALL',
                color: Colors.blue,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      10,
                      (index) {
                        return Cards.movieCards(
                          urlImage: 'data?.primaryImage?.imageUrl',
                          title: 'Elemental',
                          releaseYear: '2023',
                          duration: formatDuration(0),
                          rating: formatRating('PG'),
                          aggregateRating: 8.9,
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Texts.titleReg(
                  'CLEAR ALL',
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5.h),
            padding: EdgeInsets.all(10.sp),
            decoration: BoxDecoration(color: Get.theme.colorScheme.surface),
            child: Texts.titleReg('Notifications'),
          ),
        ],
      ),
    );
  }
}

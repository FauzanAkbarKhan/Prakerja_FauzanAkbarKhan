import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uji_keterampilan/app/modules/home/views/home_view.dart';
import 'package:uji_keterampilan/app/modules/profile/views/profile_view.dart';
import 'package:uji_keterampilan/app/modules/search_menu/views/search_menu_view.dart';
import 'package:uji_keterampilan/app/modules/video/views/video_view.dart';

class DashboardController extends GetxController {
  int tabIndex = 0;

  List<Widget> listPages = const [
    HomeView(),
    SearchMenuView(),
    VideoView(),
    ProfileView()
  ];

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}

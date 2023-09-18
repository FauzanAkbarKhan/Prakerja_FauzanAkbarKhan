import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uji_keterampilan/app/data/helper/carousels_controller.dart';
import 'package:uji_keterampilan/app/data/models/fan_favorites_model.dart';
import 'package:uji_keterampilan/app/data/models/week_top10_model.dart';
import 'package:uji_keterampilan/app/data/models/whats_streaming_model.dart';
import 'package:uji_keterampilan/app/data/providers/api.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  ApiProvider api;
  HomeController(this.api);

  bool isLoading = false;

  CarouselsController carouselsController = CarouselsController();

  TabController? tabController;
  Size? size;
  FanFavorites? fanFavorites;
  WeekTop10? weekTop10;
  WhatsStreaming? whatsStreaming;

  List<Widget> tabs = [];

  getFanFavorites() {
    isLoading = true;
    update();

    api.fanFavourites(fanFavorites).then(
      (value) {
        fanFavorites = value;
        isLoading = false;
        update();
      },
    ).catchError(
      (e) {
        isLoading = false;
        update();
        throw Exception(
          e.runtimeType == DioException
              ? e.error
              : "Terjadi Kesalahan, Silahkan Coba Lagi , $e",
        );
      },
    );
  }

  getWeekTop10() {
    isLoading = true;
    update();

    api.weekTop10(weekTop10).then(
      (value) {
        weekTop10 = value;
        isLoading = false;
        update();
      },
    ).catchError(
      (e) {
        isLoading = false;
        update();
        throw Exception(
          e.runtimeType == DioException
              ? e.error
              : "Terjadi Kesalahan, Silahkan Coba Lagi , $e",
        );
      },
    );
  }

  getWhatsStreaming() {
    isLoading = true;
    update();

    api.whatsStreaming(whatsStreaming).then(
      (value) {
        whatsStreaming = value;
        isLoading = false;
        update();
        tabController =
            TabController(length: value.data?.length ?? 0, vsync: this);
        for (var i = 0; i < value.data!.length; i++) {
          tabs.add(Tab(text: value.data?[i].providerName));
          update();
        }
      },
    ).catchError(
      (e) {
        isLoading = false;
        update();
        throw Exception(
          e.runtimeType == DioException
              ? e.error
              : "Terjadi Kesalahan, Silahkan Coba Lagi , $e",
        );
      },
    );
  }

  @override
  void onInit() async {
    super.onInit();

    getFanFavorites();
    getWeekTop10();
    getWhatsStreaming();
    tabController = TabController(length: 5, vsync: this);
  }
}

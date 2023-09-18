import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:uji_keterampilan/app/data/helper/carousels_controller.dart';
import 'package:uji_keterampilan/app/data/models/fan_favorites_model.dart';
import 'package:uji_keterampilan/app/data/models/week_top10_model.dart';
import 'package:uji_keterampilan/app/data/providers/api.dart';

class HomeController extends GetxController {
  ApiProvider api;
  HomeController(this.api);

  bool isLoading = false;

  CarouselsController carouselsController = CarouselsController();

  FanFavorites? fanFavorites;
  WeekTop10? weekTop10;

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

  @override
  void onInit() {
    super.onInit();

    getFanFavorites();
    getWeekTop10();
  }
}

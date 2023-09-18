import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uji_keterampilan/app/data/helper/carousels_controller.dart';
import 'package:uji_keterampilan/app/data/providers/api.dart';

import '../../../data/models/data_carousel_model.dart';
import '../../../data/models/popular_model.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  ApiProvider api;
  HomeController(this.api);

  bool isLoading = false;

  CarouselsController carouselsController = CarouselsController();

  DataCarousel? dataCarousel;

  Popular? popular;

  TabController? tabController;
  Size? size;
  // FanFavorites? fanFavorites;
  // WeekTop10? weekTop10;
  // WhatsStreaming? whatsStreaming;

  List<Widget> tabs = [];

  // getFanFavorites() {
  //   isLoading = true;
  //   update();

  //   api.fanFavourites(fanFavorites).then(
  //     (value) {
  //       fanFavorites = value;
  //       isLoading = false;
  //       update();
  //     },
  //   ).catchError(
  //     (e) {
  //       isLoading = false;
  //       update();
  //       throw Exception(
  //         e.runtimeType == DioException
  //             ? e.error
  //             : "Terjadi Kesalahan, Silahkan Coba Lagi , $e",
  //       );
  //     },
  //   );
  // }

  // getWeekTop10() {
  //   isLoading = true;
  //   update();

  //   api.weekTop10(weekTop10).then(
  //     (value) {
  //       weekTop10 = value;
  //       isLoading = false;
  //       update();
  //     },
  //   ).catchError(
  //     (e) {
  //       isLoading = false;
  //       update();
  //       throw Exception(
  //         e.runtimeType == DioException
  //             ? e.error
  //             : "Terjadi Kesalahan, Silahkan Coba Lagi , $e",
  //       );
  //     },
  //   );
  // }

  // getWhatsStreaming() {
  //   isLoading = true;
  //   update();

  //   api.whatsStreaming(whatsStreaming).then(
  //     (value) {
  //       whatsStreaming = value;
  //       isLoading = false;
  //       update();
  //       tabController =
  //           TabController(length: value.data?.length ?? 0, vsync: this);
  //       for (var i = 0; i < value.data!.length; i++) {
  //         tabs.add(Tab(text: value.data?[i].providerName));
  //         update();
  //       }
  //     },
  //   ).catchError(
  //     (e) {
  //       isLoading = false;
  //       update();
  //       throw Exception(
  //         e.runtimeType == DioException
  //             ? e.error
  //             : "Terjadi Kesalahan, Silahkan Coba Lagi , $e",
  //       );
  //     },
  //   );
  // }

  // getPopular() {
  //   isLoading = true;
  //   update();

  //   api.popular().then(
  //     (value) {
  //       popular = value;
  //       isLoading = false;
  //       update();
  //     },
  //   ).catchError(
  //     (e) {
  //       isLoading = false;
  //       update();
  //       throw Exception(
  //         e.runtimeType == DioException
  //             ? e.error
  //             : "Terjadi Kesalahan, Silahkan Coba Lagi , $e",
  //       );
  //     },
  //   );
  // }

  getLocalMovies() {
    String jsonData = '''
  {
    "data": [
        {
            "title": "Peaky Blinder",
            "imageUrl": "https://www.themoviedb.org/t/p/w1280/vUUqzWa2LnHIVqkaKVlVGkVcZIW.jpg",
            "vote": 7.5,
            "releaseDate": "2023-08-21"
        },
        {
            "title": "Avengers: Endgame",
            "imageUrl": "https://www.themoviedb.org/t/p/w1280/or06FN3Dka5tukK1e9sl16pB3iy.jpg",
            "vote": 8.4,
            "releaseDate": "2019-04-24"
        },
        {
            "title": "The Shawshank Redemption",
            "imageUrl": "https://www.themoviedb.org/t/p/w1280/lyQBXzOQSuE59IsHyhrp0qIiPAz.jpg",
            "vote": 8.7,
            "releaseDate": "1994-09-23"
        },
        {
            "title": "Inception",
            "imageUrl": "https://www.themoviedb.org/t/p/w1280/oYuLEt3zVCKq57qu2F8dT7NIa6f.jpg",
            "vote": 8.5,
            "releaseDate": "2010-07-15"
        },
        {
            "title": "The Lord of the Rings: The Fellowship of the Ring",
            "imageUrl": "https://www.themoviedb.org/t/p/w1280/6oom5QYQ2yQTMJIbnvbkBL9cHo6.jpg",
            "vote": 8.3,
            "releaseDate": "2001-12-18"
        },
        {
            "title": "The Dark Knight",
            "imageUrl": "https://www.themoviedb.org/t/p/w1280/qJ2tW6WMUDux911r6m7haRef0WH.jpg",
            "vote": 8.4,
            "releaseDate": "2008-07-16"
        },
        {
            "title": "Pulp Fiction",
            "imageUrl": "https://www.themoviedb.org/t/p/w1280/d5iIlFn5s0ImszYzBPb8JPIfbXD.jpg",
            "vote": 8.5,
            "releaseDate": "1994-10-14"
        },
        {
            "title": "Forrest Gump",
            "imageUrl": "https://www.themoviedb.org/t/p/w1280/arw2vcBveWOVZr6pxd9XTd1TdQa.jpg",
            "vote": 8.6,
            "releaseDate": "1994-07-06"
        },
        {
            "title": "The Matrix",
            "imageUrl": "https://www.themoviedb.org/t/p/w1280/f89U3ADr1oiB1s9GkdPOEpXUk5H.jpg",
            "vote": 8.1,
            "releaseDate": "1999-03-30"
        },
        {
            "title": "The Godfather",
            "imageUrl": "https://www.themoviedb.org/t/p/w1280/3bhkrj58Vtu7enYsRolD1fZdja1.jpg",
            "vote": 8.7,
            "releaseDate": "1972-03-15"
        }
    ]
  }
  ''';

    final Map<String, dynamic> parsedData = json.decode(jsonData);
    dataCarousel = DataCarousel.fromJson(parsedData);

    debugPrint('data : ${dataCarousel?.data?[2].imageUrl}');
  }

  // Future<void> loadJsonModel() async {
  //   // Load the JSON file from the asset
  //   final jsonStr =
  //       await rootBundle.loadString('assets/models/data_carousel.json');

  //   // Parse the JSON string
  //   final modelData = json.decode(jsonStr);

  //   // Access the data as needed
  //   List<dynamic> data = modelData['data'];
  //   // Now, you can work with the JSON data
  //   print(data);
  // }

  @override
  void onInit() async {
    super.onInit();
    getLocalMovies();

    // getFanFavorites();
    // getWeekTop10();
    // getWhatsStreaming();

    // localMovies = LocalMovies(
    //     title: 'Peaky Blinders',
    //     imageUrl:
    //         'https://www.themoviedb.org/t/p/w440_and_h660_face/bGZn5RVzMMXju4ev7xbl1aLdXqq.jpg');

    getLocalMovies();
  }
}

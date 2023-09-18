import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../../data/models/data_carousel_model.dart';

class VideoController extends GetxController {
  DataCarousel? dataCarousel;

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

  @override
  void onInit() {
    super.onInit();

    getLocalMovies();
  }
}

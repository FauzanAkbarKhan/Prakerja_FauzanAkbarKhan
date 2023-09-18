import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:uji_keterampilan/app/data/models/popular_model.dart';
import 'package:uji_keterampilan/app/data/models/whats_streaming_model.dart';

import '../models/fan_favorites_model.dart';
import '../models/week_top10_model.dart';

const baseUrlRapid = 'https://imdb188.p.rapidapi.com/api/v1';

const rapidApiToken = '8b9c8a547cmsh31d8ddd1dff8d82p1e2b24jsn13d8186304c4';

const baseUrl = 'https://api.themoviedb.org/3/movie';

const apiToken =
    'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI5ZmUxYmZhZGQwMjM4MmRlMzliYjEwMTg3ZjQ3YWYwNSIsInN1YiI6IjY1MDgxNWQwOGE4OGIyMDExZGIyODI2ZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.83fcpChSZxYh0Vmbq7zY32c5q3VA2zK4uNXqoDcRhd4';

class ApiProvider {
  String? token;

  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      headers: {
        "accept": "application/json",
        "Authorization": apiToken,
      },
      connectTimeout: const Duration(minutes: 1),
      receiveTimeout: const Duration(minutes: 1),
    ),
  );

  ApiProvider init(String? token) {
    token = token;
    initializeInterceptors();
    return this;
  }

  initializeInterceptors() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          debugPrint('REQUEST[${options.method}] => PATH: ${options.path}');
          // if (authToken != null) {
          //   options.headers['Authorization'] = "$authToken";
          // }
          return handler.next(options); //continue
        },
        onResponse: (response, handler) {
          debugPrint(
            'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}',
          );
          return handler.next(response); // continue
        },
        onError: (e, handler) {
          debugPrint(
            'ERROR[${e.response?.statusCode}] => PATH: ${e.requestOptions.path}',
          );
          // e.error = "Terjadi Kesalahan, Silahkan Coba Lagi";
          debugPrint('Erorr e.response : ${e.response}');
          debugPrint('Erorr e.message : ${e.message}');
          if (e.response != null) {
            if (e.response?.data.runtimeType != String) {
              // e.error = e.response?.data["message"] ??
              //     "Terjadi Kesalahan, Periksa Jaringan Anda";
              // e.error = e.response?.data ??
              //     'Terjadi Kesalahan, Periksa Jaringan Anda';
            } else {
              debugPrint('Erorr : ${e.response}');
              // e.error = e.response?.data ??
              //     "Terjadi Kesalahan, Periksa Jaringan Anda";
            }
          }
          return handler.next(e); //continue
        },
      ),
    );
  }

  Future<FanFavorites> fanFavourites(FanFavorites? fanFavorites) =>
      _dio.get('/getFanFavorites').then(
        (response) {
          debugPrint('ApiProvider |  getFanFavourites ()=> $response.data}');

          return FanFavorites.fromJson(response.data);
        },
      ).catchError(
        (e) {
          throw Exception(
            e.runtimeType == DioException
                ? e.error
                : "Terjadi Kesalahan, Silahkan Coba Lagi , $e",
          );
        },
      );

  Future<WeekTop10> weekTop10(WeekTop10? weekTop10) =>
      _dio.get('/getWeekTop10').then(
        (response) {
          debugPrint('ApiProvider |  weekTop10 ()=> $response.data}');

          return WeekTop10.fromJson(response.data);
        },
      ).catchError(
        (e) {
          throw Exception(
            e.runtimeType == DioException
                ? e.error
                : "Terjadi Kesalahan, Silahkan Coba Lagi , $e",
          );
        },
      );

  Future<WhatsStreaming> whatsStreaming(WhatsStreaming? whatsStreaming) =>
      _dio.get('/getWhatsStreaming').then(
        (response) {
          debugPrint('ApiProvider |  whatsStreaming ()=> $response.data}');

          return WhatsStreaming.fromJson(response.data);
        },
      ).catchError(
        (e) {
          throw Exception(
            e.runtimeType == DioException
                ? e.error
                : "Terjadi Kesalahan, Silahkan Coba Lagi , $e",
          );
        },
      );

  Future<Popular> popular({
    String? language = 'en-US',
    int? page = 1,
  }) =>
      _dio.get('/popular?language=$language&page=$page').then(
        (response) {
          debugPrint('ApiProvider |  popular ()=> $response.data}');

          return Popular.fromJson(response.data);
        },
      ).catchError(
        (e) {
          throw Exception(
            e.runtimeType == DioException
                ? e.error
                : "Terjadi Kesalahan, Silahkan Coba Lagi , $e",
          );
        },
      );
}

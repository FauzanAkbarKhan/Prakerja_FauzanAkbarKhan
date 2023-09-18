import 'package:flutter/foundation.dart';

String formatDuration(int value) {
  final duration = Duration(seconds: value);

  int hours = duration.inHours;
  int minutes = (duration.inMinutes % 60);

  String hoursText = hours > 0 ? '${hours}h ' : '';
  String minutesText = minutes > 0 ? '${minutes}m' : '';

  return '$hoursText$minutesText';
}

formatRating(String rating) {
  debugPrint(rating);
  String result = '';

  if (rating.contains('Not Rated')) {
    result = '';
  } else if (rating.contains('TV')) {
    result = rating.replaceAll(RegExp(r'TV.*'), '');
  } else if (rating.contains('PG')) {
    result = rating.replaceAll(RegExp(r'PG.*'), 'PG');
  } else {
    result = rating;
  }

  return result;
}

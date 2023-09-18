import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';

import '../data/helper/carousels_controller.dart';

class Carousels {
  static Widget defaultCarousel(
      CarouselsController? carousel, CarouselOptions options) {
    return CarouselSlider.builder(
      itemCount: carousel?.itemCount,
      itemBuilder: (context, index, realIndex) =>
          carousel?.itemBuilder!(context, index, realIndex),
      options: options,
    );
  }
}

import 'package:get/get.dart';

import '../controllers/search_menu_controller.dart';

class SearchMenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchMenuController>(
      () => SearchMenuController(),
    );
  }
}

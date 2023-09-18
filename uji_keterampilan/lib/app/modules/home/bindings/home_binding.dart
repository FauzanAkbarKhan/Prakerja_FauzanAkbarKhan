import 'package:get/get.dart';
import 'package:uji_keterampilan/app/data/providers/api.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(
        Get.find<ApiProvider>(),
      ),
    );
  }
}

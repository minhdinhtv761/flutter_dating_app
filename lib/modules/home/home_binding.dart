// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
        () => HomeController(apiRepository: Get.find()));
  }
}

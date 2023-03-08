// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'auth_controller.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(
        () => AuthController(apiRepository: Get.find()));
  }
}

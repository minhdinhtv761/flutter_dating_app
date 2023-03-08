// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'shared/services/services.dart';

class DenpendencyInjection {
  static Future<void> init() async {
    await Get.putAsync(() => StorageService().init());
  }
}

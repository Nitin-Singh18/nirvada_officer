import 'package:get/get.dart';

import '../controllers/confirm_status_screen_controller.dart';

class ConfirmStatusScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfirmStatusScreenController>(
      () => ConfirmStatusScreenController(),
    );
  }
}

import 'package:get/get.dart';

import '../controllers/is_voted_screen_controller.dart';

class IsVotedScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IsVotedScreenController>(
      () => IsVotedScreenController(),
    );
  }
}

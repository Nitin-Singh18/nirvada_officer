import 'package:get/get.dart';

import '../modules/confirm_status_screen/bindings/confirm_status_screen_binding.dart';
import '../modules/confirm_status_screen/views/confirm_status_screen_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login_screen/bindings/login_screen_binding.dart';
import '../modules/login_screen/views/login_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.CONFIRM_STATUS_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_SCREEN,
      page: () => const LoginScreenView(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: _Paths.CONFIRM_STATUS_SCREEN,
      page: () => const ConfirmStatusScreenView(),
      binding: ConfirmStatusScreenBinding(),
    ),
  ];
}

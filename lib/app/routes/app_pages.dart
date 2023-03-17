import 'package:get/get.dart';
import 'package:nirvada_officer/app/modules/facial_recognition_screen/bindings/facial_recognition_screen_binding.dart';

import '../modules/confirm_status_screen/bindings/confirm_status_screen_binding.dart';
import '../modules/confirm_status_screen/views/confirm_status_screen_view.dart';
import '../modules/facial_recognition_screen/views/facial_recognition_screen_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login_screen/bindings/login_screen_binding.dart';
import '../modules/login_screen/views/login_screen_view.dart';
import '../modules/status_screen/bindings/status_screen_binding.dart';
import '../modules/status_screen/views/status_screen_view.dart';
import '../modules/vote_screen/bindings/vote_screen_binding.dart';
import '../modules/vote_screen/views/vote_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.FACIAL_RECOGNITION_SCREEN;

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
    GetPage(
      name: _Paths.STATUS_SCREEN,
      page: () => const StatusScreenView(),
      binding: StatusScreenBinding(),
    ),
    GetPage(
      name: _Paths.VOTE_SCREEN,
      page: () => const VoteScreenView(),
      binding: VoteScreenBinding(),
    ),
        GetPage(
      name: _Paths.FACIAL_RECOGNITION_SCREEN,
      page: () => FacialRecognitionScreenView(),
      binding: FacialRecognitionScreenBinding(),
    ),
  ];
}

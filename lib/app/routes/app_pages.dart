// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/result/bindings/result_binding.dart';
import '../modules/result/views/result_view.dart';
import '../modules/scan_qr/bindings/scan_qr_binding.dart';
import '../modules/scan_qr/views/scan_qr_view.dart';
import '../modules/scan_rfid/bindings/scan_rfid_binding.dart';
import '../modules/scan_rfid/views/scan_rfid_view.dart';
import '../modules/select_trip/bindings/select_trip_binding.dart';
import '../modules/select_trip/views/select_trip_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SCAN_QR,
      page: () => const ScanQrView(),
      binding: ScanQrBinding(),
    ),
    GetPage(
      name: _Paths.SCAN_RFID,
      page: () => const ScanRfidView(),
      binding: ScanRfidBinding(),
    ),
    GetPage(
      name: _Paths.RESULT,
      page: () => const ResultView(),
      binding: ResultBinding(),
    ),
    GetPage(
      name: _Paths.SELECT_TRIP,
      page: () => const SelectTripView(),
      binding: SelectTripBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
  ];
}

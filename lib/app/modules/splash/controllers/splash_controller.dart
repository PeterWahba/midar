import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onInit();
    _init();
  }

  Future<void> _init() async {
    // Delay to show splash screen
    await 2.delay();
    Get.offNamed(Routes.SELECT_TRIP);
  }
}

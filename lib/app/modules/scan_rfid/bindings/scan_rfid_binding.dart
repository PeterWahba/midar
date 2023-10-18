import 'package:get/get.dart';

import '../controllers/scan_rfid_controller.dart';

class ScanRfidBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScanRfidController>(
      () => ScanRfidController(),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/scan_rfid_controller.dart';

class ScanRfidView extends GetView<ScanRfidController> {
  const ScanRfidView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScanRfidView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ScanRfidView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

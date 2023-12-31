import 'dart:convert';

import 'package:flutter_nfc_kit/flutter_nfc_kit.dart';
import 'package:get/get.dart';
// import 'package:ndef/ndef.dart' as ndef;

// import 'package:midar/mifare_nfc_classic/lib/mifare_nfc_classic.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  // ScanTicketReqModel ticketData = ScanTicketReqModel();
  // ResultResModel resultData = ResultResModel();

  @override
  void onInit() async {
    super.onInit();
    loadData();
  }

  @override
  void onReady() {
    loadData();

    super.onReady();
  }

  loadData() async {
    print('loadData');
    var availability = await FlutterNfcKit.nfcAvailability;
    if (availability != NFCAvailability.available) {
      // oh-no
    }

// timeout only works on Android, while the latter two messages are only for iOS
    var tag = await FlutterNfcKit.poll(
        timeout: const Duration(seconds: 10),
        iosMultipleTagMessage: "Multiple tags found!",
        iosAlertMessage: "Scan your tag");

    print(jsonEncode(tag));
    if (tag.type == NFCTagType.iso7816) {
      var result = await FlutterNfcKit.transceive("00B0950000",
          timeout: const Duration(
              seconds:
                  5)); // timeout is still Android-only, persist until next change
      print(result);
    }
// iOS only: set alert message on-the-fly
// this will persist until finish()
    await FlutterNfcKit.setIosAlertMessage("hi there!");

// read NDEF records if available
    if (tag.ndefAvailable ?? false) {
      /// decoded NDEF records (see [ndef.NDEFRecord] for details)
      /// `UriRecord: id=(empty) typeNameFormat=TypeNameFormat.nfcWellKnown type=U uri=https://github.com/nfcim/ndef`
      for (var record in await FlutterNfcKit.readNDEFRecords(cached: false)) {
        print(record.toString());
      }

      /// raw NDEF records (data in hex string)
      /// `{identifier: "", payload: "00010203", type: "0001", typeNameFormat: "nfcWellKnown"}`
      for (var record
          in await FlutterNfcKit.readNDEFRawRecords(cached: false)) {
        print(jsonEncode(record).toString());
      }
    }

// Call finish() only once
    await FlutterNfcKit.finish();
// iOS only: show alert/error message on finish
    await FlutterNfcKit.finish(iosAlertMessage: "Success");
// or
    await FlutterNfcKit.finish(iosErrorMessage: "Failed");
  }
}

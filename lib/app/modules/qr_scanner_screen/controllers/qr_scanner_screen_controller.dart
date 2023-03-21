import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:majascan/majascan.dart';

class QrScannerScreenController extends GetxController {
  String result = "Hey there !";

  Future<void> scanQR() async {
    try {
      String? qrResult = await MajaScan.startScan(
          title: "QRcode scanner",
          titleColor: Colors.black,
          qRCornerColor: Colors.black54,
          qRScannerColor: Colors.transparent);

      result = qrResult ?? 'null string';
      update();
    } on PlatformException catch (ex) {
      if (ex.code == MajaScan.CameraAccessDenied) {
        result = "Camera permission was denied";
        update();
      } else {
        result = "Unknown Error $ex";
        update();
      }
    } on FormatException {
      result = "You pressed the back button before scanning anything";
      update();
    } catch (ex) {
      result = "Unknown Error $ex";
      update();
    }
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/qr_scanner_screen_controller.dart';

class QrScannerScreenView extends GetView<QrScannerScreenController> {
  const QrScannerScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("QR Scanner"),
      ),
      body: Center(
        child: Text(
          controller.result,
          style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.camera_alt),
        label: Text("Scan"),
        onPressed: controller.scanQR,
        backgroundColor: Colors.black,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/is_voted_screen_controller.dart';

class IsVotedScreenView extends GetView<IsVotedScreenController> {
  const IsVotedScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IsVotedScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'IsVotedScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

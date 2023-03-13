import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../data/widgets/candidate_title.dart';
import '../../../data/widgets/xText.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          toolbarHeight: 90.h,
          flexibleSpace: Column(
            children: [
              SizedBox(
                height: 4.h,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    XText(
                      text: "Time left : ",
                      size: 14,
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                    ),
                    XText(
                      text: "2:24:23",
                      size: 14,
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const XText(
                  text: "  Select your candidate -",
                  size: 18,
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return CandidateTile();
                })),
      ),
    );
  }
}

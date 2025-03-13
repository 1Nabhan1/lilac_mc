import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home_screen/controller/home_controller.dart';
import '../../requirement_screen/controller/req_controller.dart';

class BottomNavController extends GetxController {
  RxInt currentIndex = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit

    super.onInit();
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  void notification() {
    Get.snackbar('No Notifications', 'No new notifications available');
  }
}

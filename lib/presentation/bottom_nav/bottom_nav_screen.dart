import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lilac_mc_tst/core/constants/const_data/const_data.dart';
import 'package:lilac_mc_tst/generated/assets.dart';

import 'controller/bottom_nav_controller.dart';
import 'models/bottom_nav_data.dart';

class BottomNavScreen extends GetView<BottomNavController> {
  const BottomNavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => BottomNavData
          .pages[controller.currentIndex.value]), //destination screen
      floatingActionButton: FloatingActionButton(
        backgroundColor: ConstData.btnClr,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r)),
        child: Image.asset(Assets.assetsDollarCircle),
        onPressed: () {},
        //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Obx(
        () => AnimatedBottomNavigationBar(
          icons: BottomNavData.icnList, activeColor: ConstData.btnClr,
          inactiveColor: Colors.grey,
          activeIndex: controller.currentIndex.value,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.defaultEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (p0) {
            controller.currentIndex.value = p0;
          },
          //other params
        ),
      ),
    );
  }
}

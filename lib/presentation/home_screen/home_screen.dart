import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lilac_mc_tst/generated/assets.dart';
import 'package:lilac_mc_tst/presentation/bottom_nav/controller/bottom_nav_controller.dart';
import 'package:lilac_mc_tst/presentation/home_screen/controller/home_controller.dart';
import 'package:lilac_mc_tst/presentation/home_screen/models/home_data.dart';
import 'package:lilac_mc_tst/presentation/home_screen/widgets/home_widget.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(
      HomeController(),
    );
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => scaffoldKey.currentState!.openDrawer(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              Assets.assetsMenu,
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: ()
            => controller.notification(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(Assets.assetsNotification),
            ),
          )
        ],
      ),
      drawer: Drawer(),
      body: Column(
        children: [HomeWidget.grid()],
      ),
    );
  }
}

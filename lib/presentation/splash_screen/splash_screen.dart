import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lilac_mc_tst/presentation/splash_screen/controller/splash_controller.dart';

import '../../generated/assets.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(Assets.assetsSplashLogo),
      ),
    );
  }
}

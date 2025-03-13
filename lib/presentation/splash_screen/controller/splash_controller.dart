import 'package:get/get.dart';
import 'package:lilac_mc_tst/core/constants/user_data/user_data.dart';
import 'package:lilac_mc_tst/routes/app_routes/app_routes.dart';

class SplashController extends GetxController {
  final UserData userData = UserData();
  @override
  void onInit() {
    // TODO: implement onInit
    checkStatus();
    super.onInit();
  }

  void checkStatus() {
    Future.delayed(
      Duration(seconds: 4),
      () {
        if (userData.token != null) {
          Get.offAllNamed(AppRoutes.bottomNavScreen);
        } else {
          Get.offAllNamed(AppRoutes.signInScreen);
        }
      },
    );
  }
}

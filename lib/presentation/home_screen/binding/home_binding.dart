import 'package:get/get.dart';
import 'package:lilac_mc_tst/presentation/home_screen/controller/home_controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(HomeController());
    // TODO: implement dependencies
  }
}
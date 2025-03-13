import 'package:get/get.dart';
import 'package:lilac_mc_tst/presentation/requirement_screen/controller/req_controller.dart';

class ReqBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ReqController());
  }
}

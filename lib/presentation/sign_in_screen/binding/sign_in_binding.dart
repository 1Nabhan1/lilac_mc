import 'package:get/get.dart';

import '../controller/sign_in_controlleer.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SignInController());
    // TODO: implement dependencies
  }
}

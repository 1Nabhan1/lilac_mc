import 'package:get/get.dart';

import '../controller/total_vehicle_controller.dart';

class TotalVehicleBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(TotalVehicleController());
  }
}

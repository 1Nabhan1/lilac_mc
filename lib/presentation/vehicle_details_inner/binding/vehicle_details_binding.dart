import 'package:get/get.dart';
import 'package:lilac_mc_tst/presentation/vehicle_details_inner/controller/vehicle_inner_controller.dart';

class VehicleDetailsBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(VehicleInnerController());
    // TODO: implement dependencies
  }
}
import 'package:get/get.dart';
import 'package:lilac_mc_tst/data/apiClient/api_service/api_service.dart';
import 'package:lilac_mc_tst/presentation/vehicle_details_inner/model/vehicle_details_model.dart';

class VehicleInnerController extends GetxController {
  final apiService = ApiService();
  final args = Get.arguments;
  late Future<VehicleDetailsModel?> futureVehicleData;

  @override
  void onInit() {
    // TODO: implement onInit
    futureVehicleData = apiService.fetchVehicleDetails(args['id']);
    super.onInit();
  }
}

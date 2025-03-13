import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lilac_mc_tst/data/apiClient/api_service/api_service.dart';
import 'package:lilac_mc_tst/presentation/requirement_screen/modal/variant_data.dart';

import '../modal/brand_data_model.dart';
import '../modal/model_data.dart';
import '../modal/vendor_req_data.dart';

class ReqController extends GetxController {
  final apiService = ApiService();
  var brands = <Brand>[].obs;
  var brandsModel = <ModData>[].obs;
  var variants = <Variant>[].obs;
  var fuelTypes = <FuelType>[].obs;
  var transmission = <Transmission>[].obs;
  var vehicleModel = <ModData>[].obs;
  var vehicleColors = <VehicleColor>[].obs;
  var vehicleInfo = <VehicleInfo>[].obs;

  var selectedBrandId = Rxn<int>();
  var selectedFuelId = Rxn<int>();
  var selectedVehicleColorId = Rxn<int>();
  var selectedVehicleInfoId = Rxn<int>();
  var selectedVehicleModelId = Rxn<int>();
  var selectedVariantId = Rxn<int>();
  var selectedTransmissionId = Rxn<int>();
  var selectedYear = ''.obs;
late Future<VendorReq?> fetchVendorReq;
  @override
  void onInit() {
    brandData();
    fetchVendorReq = apiService.fetchVendorReq();
    // TODO: implement onInit
    super.onInit();
  }

  void clearDropDown() {
    brandsModel.clear();
    variants.clear();
    fuelTypes.clear();
    // Reset all selected values to avoid DropdownButtonFormField error
    selectedVehicleModelId.value = null;
    selectedFuelId.value = null;
    selectedVariantId.value = null;
  }

  void brandData() async {
    final brand = await apiService.getBrandData();
    if (brand!.status) {
      brands.assignAll(brand.data.brands);
      vehicleColors.assignAll(brand.data.vehicleColors);
      vehicleInfo.assignAll(brand.data.vehicleInfo);
    }
  }

  void brandModelData(int id) async {
    final brandModel = await apiService.getBrandModelData(id);
    if (brandModel != null && brandModel.status == true) {
      brandsModel.assignAll(brandModel.data!);
    }
  }

  void variantData(int brandId, int modelId) async {
    final variantResponse =
        await apiService.getVariantData(brandId: brandId, modelId: modelId);
    if (variantResponse != null && variantResponse.status == true) {
      variants.assignAll(variantResponse.data!.variant!);
      fuelTypes.assignAll(variantResponse.data!.fuelTypes!);
      transmission.assignAll(variantResponse.data!.transmissions!);
    }
  }

  void submitData(BuildContext context) {
    if (selectedBrandId.value == null ||
        selectedVehicleModelId.value == null ||
        selectedVariantId.value == null ||
        selectedTransmissionId.value == null ||
        selectedFuelId.value == null ||
        selectedVehicleColorId.value == null ||
        selectedYear.value == null) {
      // Show error message if any field is missing
      Get.snackbar(
        "Error",
        "Please fill all fields before submitting",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }

    apiService.addReq(
      brand: selectedBrandId.value!,
      model: selectedVehicleModelId.value!,
      variant: selectedVariantId.value!,
      transmission: selectedTransmissionId.value!,
      fuel: selectedFuelId.value!,
      color: selectedVehicleColorId.value!,
      year: selectedYear.value!,
      context: context,
    );
  }
}

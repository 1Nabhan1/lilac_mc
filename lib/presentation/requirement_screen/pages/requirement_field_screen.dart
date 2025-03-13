import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lilac_mc_tst/presentation/requirement_screen/controller/req_controller.dart';
import 'package:lilac_mc_tst/presentation/requirement_screen/modal/brand_data_model.dart';
import 'package:lilac_mc_tst/presentation/requirement_screen/widget/req_custom_dropdown.dart';

import '../../../core/constants/const_data/const_data.dart';

class RequirementFieldScreen extends GetView<ReqController> {
  const RequirementFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Vehicle Requirement',
          style: ConstData.appBarHeadStyle,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(
              () => ReqCustomDropdown(
                  hint: 'Select Brand',
                  items: controller.brands
                      .map((brand) => DropdownMenuItem<int>(
                            value: brand.id,
                            child: Text(brand.name),
                          ))
                      .toList(),
                  onChanged: (value) {
                    controller.clearDropDown();
                    controller.selectedBrandId.value = value;
                    controller.brandModelData(value);
                  },
                  head: 'Brand'),
            ),
            SizedBox(
              height: 20,
            ),
            Obx(
              () => ReqCustomDropdown(
                  hint: 'Select Model',
                  key: ValueKey(controller.selectedBrandId.value),
                  items: controller.brandsModel
                      .map((brand) => DropdownMenuItem<int>(
                            value: brand.id,
                            child: Text(brand.name!),
                          ))
                      .toList(),
                  onChanged: (value) {
                    controller.selectedVehicleModelId.value = value;
                    controller.variantData(
                        controller.selectedBrandId.value!, value);
                  },
                  head: 'Model'),
            ),
            SizedBox(
              height: 20,
            ),
            Obx(
              () => ReqCustomDropdown(
                key: ValueKey(controller.selectedVehicleModelId.value),
                head: "Variant",
                hint: "Select Variant",
                items: controller.variants.map((variant) {
                  return DropdownMenuItem(
                    value: variant.id,
                    child: Text(variant.name!),
                  );
                }).toList(),
                onChanged: (value) {
                  controller.selectedVariantId.value = value as int;
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Obx(
              () => ReqCustomDropdown(
                key: ValueKey(controller.selectedVehicleModelId.value),
                head: "Year",
                hint: "Select Year",
                items: [
                  DropdownMenuItem(
                    child: Text('2024'),
                    value: '2024',
                  ),
                  DropdownMenuItem(
                    child: Text('2025'),
                    value: '2025',
                  )
                ],
                onChanged: (value) {
                  controller.selectedYear.value = value;
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Transmission',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: controller.transmission.map((e) {
                    return GestureDetector(
                      onTap: () {
                        controller.selectedTransmissionId.value =
                            e.id; // Store selected ID
                      },
                      child: Obx(() => Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.symmetric(
                                horizontal: 45.w, vertical: 15),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: controller
                                              .selectedTransmissionId.value ==
                                          e.id
                                      ? ConstData
                                          .btnClr // Highlight selected container
                                      : Colors.grey[300]!),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                e.name!,
                                style: TextStyle(
                                  color: ConstData.btnClr,
                                ),
                              ),
                            ),
                          )),
                    );
                  }).toList(),
                )),
            Obx(
              () => ReqCustomDropdown(
                key: ValueKey(controller.selectedBrandId.value),
                head: "Fuel",
                hint: "Select Fuel Type",
                items: controller.fuelTypes.map((fuel) {
                  return DropdownMenuItem(
                    value: fuel.id,
                    child: Text(fuel.name!),
                  );
                }).toList(),
                onChanged: (value) {
                  controller.selectedFuelId.value = value as int;
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Obx(
              () => ReqCustomDropdown(
                key: ValueKey(controller.selectedBrandId.value),
                head: "Color",
                hint: "Select Color",
                items: controller.vehicleColors.map((variant) {
                  return DropdownMenuItem(
                    value: variant.id,
                    child: Text(variant.name),
                  );
                }).toList(),
                onChanged: (value) {
                  controller.selectedVehicleColorId.value = value as int;
                },
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(240.w, 40.h),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    backgroundColor: ConstData.btnClr,
                    foregroundColor: Colors.white),
                onPressed: () => controller.submitData(context),
                child: Text('Submit')),
          ],
        ),
      ),
    );
  }
}

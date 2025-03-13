import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:lilac_mc_tst/core/constants/const_data/const_data.dart';
import 'package:lilac_mc_tst/presentation/vehicle_details_inner/widget/vehicle_detail_widgets.dart';

import 'controller/vehicle_inner_controller.dart';

class VehicleDetailsInner extends GetView<VehicleInnerController> {
  const VehicleDetailsInner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: controller.futureVehicleData,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final data = snapshot.data;
          final vehData = data!.data;
          return Stack(
            children: [
              Column(
                children: [
                  Image.network(
                    vehData!.images![0].imageUrl!,
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Center(
                      child: Icon(Icons.error),
                    ),
                  )
                ],
              ),
              Positioned(
                  top: 30,
                  right: 0,
                  left: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => Get.back(),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          CupertinoIcons.ellipsis_vertical,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )),
              Positioned(
                top: 200,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${vehData!.brand!.name} ${vehData.vehicleModel!.name} ${vehData.vehicleVariant!.name} (${vehData.year})",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: ConstData.btnClr),
                        ),
                        Text(
                          '₹ ${vehData.dealPrice}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: ConstData.btnClr,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          color: Colors.grey.shade200,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: GridView(
                              shrinkWrap: true,
                              physics: BouncingScrollPhysics(),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      mainAxisExtent: 40,
                                      crossAxisSpacing: 10.w,
                                      mainAxisSpacing: 10.w),
                              children: [
                                VehicleDetailWidgets.vehicleSpec(
                                    '${vehData.transmission!.name}',
                                    Icons.transform),
                                VehicleDetailWidgets.vehicleSpec(
                                    vehData.vehicleColor!.name!,
                                    Icons.color_lens_outlined),
                                VehicleDetailWidgets.vehicleSpec(
                                    vehData.fuelType!.name!, Icons.water),
                                VehicleDetailWidgets.vehicleSpec(
                                    vehData.kmDriven!, Icons.speed),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Center(
            child: Text('No Data'),
          );
        }
      },
    ));
  }
}

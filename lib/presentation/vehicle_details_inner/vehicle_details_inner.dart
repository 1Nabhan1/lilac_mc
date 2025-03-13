import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      body: Stack(
        children: [
          Column(
            children: [
              Image.network(
                'https://images.pexels.com/photos/170811/pexels-photo-170811.jpeg?cs=srgb&dl=pexels-mikebirdy-170811.jpg&fm=jpg',
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              )
            ],
          ),
          Positioned(
              top: 20,
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
                      'Rolls Roys Cullinan Series II (2020)',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: ConstData.btnClr),
                    ),
                    Text(
                      '₹ 150,000,00',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ConstData.btnClr,
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GridView(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisExtent: 40,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10),
                      children: [
                        VehicleDetailWidgets.vehicleSpec(
                            'Automatic', Icons.transform),
                        VehicleDetailWidgets.vehicleSpec(
                            'Automatic', Icons.transform),
                        VehicleDetailWidgets.vehicleSpec(
                            'Automatic', Icons.transform),
                        VehicleDetailWidgets.vehicleSpec(
                            'Automatic', Icons.transform),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

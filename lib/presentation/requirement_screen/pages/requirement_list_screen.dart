import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lilac_mc_tst/presentation/requirement_screen/controller/req_controller.dart';
import 'package:lilac_mc_tst/routes/app_routes/app_routes.dart';

import '../../../core/constants/const_data/const_data.dart';
import '../../../widgets/shimmer/shimmer_widget.dart';
import '../widget/req_widget.dart';

class RequirementScreen extends StatelessWidget {
  const RequirementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ReqController(), tag: UniqueKey().toString());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Requirement List',
          style: ConstData.appBarHeadStyle,
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                FutureBuilder(
                  future: controller.fetchVendorReq,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      final data = snapshot.data!.data;
                      return ListView.builder(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        scrollDirection: Axis.vertical,
                        itemCount: data!.length,
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          final requests = data[index];
                          return Card(
                            margin: EdgeInsets.all(8),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${requests.brand!.name!} ${requests.vehicleModel!.name!} (${requests.year})',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: ConstData.btnClr),
                                  ),
                                  ReqWidget.rowTxt('Transmission',
                                      requests.transmission!.name!),
                                  ReqWidget.rowTxt(
                                      'Fuel', requests.fuelType!.name!),
                                  ReqWidget.rowTxt(
                                      'Color', requests.vehicleColor!.name!),
                                  ReqWidget.rowActive(
                                      'Active', requests.status!)
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    } else if (snapshot.connectionState ==
                        ConnectionState.waiting) {
                      return ShimmerLoading();
                    } else {
                      return Center(
                        child: Text('No Data'),
                      );
                    }
                  },
                ),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            left: 60,
            right: 60,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(240.w, 40.h),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    backgroundColor: ConstData.btnClr,
                    foregroundColor: Colors.white),
                onPressed: () => Get.toNamed(AppRoutes.reqSelectScreen),
                child: Text('+ Create a Requirement')),
          )
        ],
      ),
    );
  }
}

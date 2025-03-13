import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lilac_mc_tst/generated/assets.dart';
import 'package:lilac_mc_tst/presentation/total_vehicle/widget/total_vehicle_widget.dart';
import 'package:lilac_mc_tst/routes/app_routes/app_routes.dart';

class TotalVehicle extends StatelessWidget {
  const TotalVehicle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Total Vehicle'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TotalVehicleWidget.searchField(),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => Get.toNamed(AppRoutes.vehicleDetailsScreen,
                      arguments: {'id': index + 1}),
                  child: Card(
                    margin: EdgeInsets.all(8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          child: SizedBox(
                            height: 150,
                            width: double.infinity,
                            child: Image.network(
                              'https://test.vehup.com/user_assets/images/aboutUs.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Volkswagen Polo',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                r'$10,00,000',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TotalVehicleWidget.iconValueRow(
                                      img: Assets.assetsCalendar,
                                      value: '2023'),
                                  TotalVehicleWidget.iconValueRow(
                                      img: Assets.assetsSpeedMeter,
                                      value: '10000'),
                                  TotalVehicleWidget.iconValueRow(
                                      img: Assets.assetsFuel, value: 'Diesel'),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lilac_mc_tst/generated/assets.dart';

import '../../../core/constants/const_data/const_data.dart';
import '../../../routes/app_routes/app_routes.dart';
import '../modal/req_data.dart';

class RequirementSelectScreen extends StatelessWidget {
  const RequirementSelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'What would you prefer to have?',
            style: ConstData.appBarHeadStyle,
          ),
          centerTitle: true,
        ),
        body: GridView.builder(
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemCount: 2,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisExtent: 150),
          itemBuilder: (context, index) {
            final img = ReqData.img[index];
            return GestureDetector(
              onTap: () {
                if (index == 0) {
                  Get.toNamed(AppRoutes.reqFieldScreen);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Currently Bike Not Available')));
                }
              },
              child: Card(
                margin: EdgeInsets.all(8),
                child: Center(
                  child: SvgPicture.asset(img),
                ),
              ),
            );
          },
        ));
  }
}

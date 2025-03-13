import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../models/home_data.dart';

class HomeWidget {
 static Widget grid() {
    return   GridView.builder(
      padding: EdgeInsets.all(16),
      itemCount: HomeData().gridData.length,
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        final data = HomeData().gridData[index];
        return GestureDetector(onTap: () => Get.toNamed(data['route']),
          child: Card(
            margin: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(data['img']),
                Text(
                  data['count'],
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                ),
                Text(data['title'])
              ],
            ),
          ),
        );
      },
    );
  }
}
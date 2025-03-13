import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lilac_mc_tst/core/constants/const_data/const_data.dart';

class ReqWidget {
  static Widget rowTxt(String txt1, String txt2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(txt1), Text(txt2)],
    );
  }

  static Widget rowActive(String txt1, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(txt1),
        Switch(
          padding: EdgeInsets.all(0),
          value: value == 'active',
          onChanged: (newValue) {},
          activeColor: ConstData.btnClr,
          inactiveThumbColor: Colors.grey,
          thumbColor: WidgetStatePropertyAll(Colors.white),
        )
      ],
    );
  }
}

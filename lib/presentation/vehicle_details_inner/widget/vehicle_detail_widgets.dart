import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VehicleDetailWidgets {
  static Widget vehicleSpec(String txt,IconData icn) {
    return Row(
      children: [Icon(icn),SizedBox(width: 4,), Text(txt,style: TextStyle(fontSize: 12),)],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VehicleDetailWidgets {
  static Widget vehicleSpec(String txt,IconData icn) {
    return Container(padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.shade300,
      ),
      child: Row(
        children: [Icon(icn),SizedBox(width: 4,), Text(txt)],
      ),
    );
  }
}

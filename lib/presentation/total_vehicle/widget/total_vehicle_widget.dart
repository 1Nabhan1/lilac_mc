import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TotalVehicleWidget {
  static Widget searchField() {
    return Padding(
      padding: const EdgeInsets.all(
        8.0,
      ),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.grey),
            prefixIcon: Icon(
              CupertinoIcons.search,
              color: Colors.grey,
            ),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }

  static Widget iconValueRow({required String img, required String value}) {
    return Row(
      children: [
        Image.asset(img),
        SizedBox(
          width: 5,
        ),
        Text(value)
      ],
    );
  }
}

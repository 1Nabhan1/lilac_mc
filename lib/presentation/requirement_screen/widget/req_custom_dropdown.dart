import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReqCustomDropdown<T> extends StatelessWidget {
  const ReqCustomDropdown(
      {super.key, required this.items, this.onChanged, required this.head, required this.hint});
  final List<DropdownMenuItem<T>> items;
  final ValueChanged<dynamic>? onChanged;
  final String head;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            head,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          DropdownButtonFormField<T>(
              decoration: InputDecoration(hintText: hint,
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  filled: true),
              items: items,
              onChanged: onChanged),
        ],
      ),
    );
  }
}

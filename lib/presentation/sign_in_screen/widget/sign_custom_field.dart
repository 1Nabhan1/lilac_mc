import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignCustomField extends StatelessWidget {
  const SignCustomField(
      {super.key,
      required this.head,
      required this.hint,
      required this.prefix,
      this.suffix, this.controller});
  final String head;
  final String hint;
  final Widget prefix;
  final Widget? suffix;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ' $head',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          TextFormField(controller: controller,
            decoration: InputDecoration(
                prefixIcon: prefix,
                suffixIcon: suffix,
                hintText: hint,
                border: OutlineInputBorder(borderSide: BorderSide.none),
                filled: true,
                fillColor: Colors.white),
          ),
        ],
      ),
    );
  }
}

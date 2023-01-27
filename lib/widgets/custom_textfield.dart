import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextfield extends StatelessWidget {
  CustomTextfield({super.key, required this.text, this.icon, this.height = 10});
  final String? text;
  final IconData? icon;
  double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xffF8F8FD),
          contentPadding: EdgeInsets.symmetric(vertical: height, horizontal: 8),
          alignLabelWithHint: false,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(color: Color(0xffE1E1E1), width: 1),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffE1E1E1), width: 1),
          ),
          hintText: text,
          suffixIcon: Icon(icon, color: Colors.grey),
        ),
      ),
    );
  }
}

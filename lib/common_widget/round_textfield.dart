import 'package:flutter/material.dart';
import 'package:snacksprite/common/color_extension.dart';

class RoundTextfield extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool obsecured;
  const RoundTextfield(
      {super.key,
      this.controller,
      required this.hintText,
      this.keyboardType,
      this.obsecured = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: TColor.textfield,
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextField(
        keyboardType: keyboardType,
        autocorrect: false,
        controller: controller,
        obscureText: obsecured,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 16,
            color: TColor.placeholder,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

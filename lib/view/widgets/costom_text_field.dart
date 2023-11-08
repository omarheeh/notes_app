import 'package:flutter/material.dart';
import 'package:noteapp/constens.dart';

class CostomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final Function(String?)? onSaved;
  final String hintText;
  final int maxLines;
  const CostomTextField({
    super.key,
    this.controller,
    required this.hintText,
    this.maxLines = 1,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is required";
        } else {
          return null;
        }
      },
      controller: controller,
      cursorColor: Color(KPrimaryColor),
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(
          Color(KPrimaryColor),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}

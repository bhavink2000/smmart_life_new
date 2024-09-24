import 'package:flutter/material.dart';
import '../../../../App Helper/color_helper.dart';

class RegisterTextField extends StatelessWidget {
  final String? label, hintText;
  final TextEditingController? controller;
  final Widget? suffixWidget, suffixIcon;
  final bool? readOnly, isRequiredField;
  const RegisterTextField(
      {super.key,
      this.label,
      this.controller,
      this.suffixWidget,
      this.readOnly = false,
      this.hintText,
      this.suffixIcon,
      this.isRequiredField = false});

  @override
  Widget build(BuildContext context) {
    InputBorder border = const UnderlineInputBorder(
        borderSide: BorderSide(
      width: 1,
      color: ColorHelper.silver,
    ));
    return TextFormField(
      controller: controller,
      cursorColor: Colors.black54,
      readOnly: readOnly!,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        label: RichText(
            text: TextSpan(children: [
          TextSpan(
              text: label,
              style: const TextStyle(color: Colors.black, fontSize: 16)),
          if (isRequiredField!)
            const TextSpan(text: '*', style: TextStyle(color: Colors.red))
        ])),
        labelStyle: const TextStyle(color: Colors.black),
        hintText: hintText,
        focusedBorder: border,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: ColorHelper.silver,
          ),
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}

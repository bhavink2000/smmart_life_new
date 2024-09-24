import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../App Helper/color_helper.dart';

class LoginFields extends StatelessWidget {
  final String? label;
  final Icon? sofixicon;
  final Widget? prifix;
  final VoidCallback? onTapIcon;
  final bool? isSecure, isNumber;
  final FormFieldValidator? validator;
  final TextEditingController? controller;
  const LoginFields(
      {super.key,
      this.label,
      this.sofixicon,
      this.onTapIcon,
      this.validator,
      this.controller,
      this.prifix,
      this.isSecure,
      this.isNumber = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: controller,
        cursorColor: Colors.black54,
        keyboardType: isNumber! ? TextInputType.number : null,
        obscureText: isSecure == null ? false : isSecure!,
        inputFormatters: isNumber!
            ? [
                LengthLimitingTextInputFormatter(10),
              ]
            : null,
        decoration: InputDecoration(
            prefixIcon: prifix,
            label: Text('$label'),
            labelStyle: const TextStyle(color: Colors.black),
            contentPadding: const EdgeInsets.symmetric(vertical: 5),
            fillColor: ColorHelper.silver.withOpacity(0.2),
            filled: true,
            border: InputBorder.none,
            suffixIcon: sofixicon == null
                ? null
                : IconButton(onPressed: onTapIcon, icon: sofixicon!)),
        validator: validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
      ),
    );
  }
}

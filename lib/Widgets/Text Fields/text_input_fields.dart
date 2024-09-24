import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final String? label;
  final bool? isSecure;
  final Color? labelClr;
  final Icon? icon;
  final VoidCallback? onTapIcon;
  final FormFieldValidator? validator ;
  final TextEditingController? controller;
  const TextInputField(
      {super.key,
      this.label,
      this.icon,
      this.onTapIcon,
      this.controller,
      this.isSecure,
      this.validator,
      this.labelClr});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: TextFormField(
        controller: controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        cursorColor: Colors.black54,
        obscureText: isSecure == null ? false : isSecure!,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
            border: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.black54)),
            focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.black54)),
            label: Text(
              label!,
              style: const TextStyle(color: Colors.black),
            ),
            suffixIcon: icon == null
                ? null
                : IconButton(onPressed: onTapIcon, icon: icon!)),
        validator: validator,
      ),
    );
  }
}

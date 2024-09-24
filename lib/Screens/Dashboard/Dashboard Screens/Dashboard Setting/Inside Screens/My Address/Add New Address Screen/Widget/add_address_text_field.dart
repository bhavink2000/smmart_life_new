import 'package:flutter/material.dart';
import '../../../../../../../../App Helper/color_helper.dart';
import '../../../../../../../../App Helper/font_helper.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label, hint;
  final Widget? suffix;
  final bool? change, isReadOnly, isSecured, edit, isSpaceBetnLblHint;
  final VoidCallback? onTapChange, onTapEdit;
  const CustomTextField(
      {super.key,
      this.controller,
      this.label,
      this.suffix,
      this.change,
      this.onTapChange,
      this.isReadOnly = false,
      this.isSecured = false,
      this.edit,
      this.onTapEdit,
      this.hint,
      this.isSpaceBetnLblHint = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              '$label',
              style: TextStyle(
                  fontSize: 12,
                  color: ColorHelper.doveGray.withOpacity(0.7),
                  fontFamily: FontHelper.avenirBook),
            ),
            const Spacer(),
            change == true
                ? InkWell(
                  onTap: onTapChange,
                  child: const Text(
                      'Change',
                      style: TextStyle(
                          fontFamily: FontHelper.avenirBook,
                          color: ColorHelper.brown),
                    ),
                )
                : edit == true
                    ? InkWell(
                        onTap: onTapEdit,
                        child: const Text(
                          'edit',
                          style: TextStyle(
                              fontFamily: FontHelper.avenirBook,
                              color: ColorHelper.brown),
                        ))
                    : Container()
          ],
        ),
        if (isSpaceBetnLblHint!)
          const SizedBox(
            height: 10,
          ),
        SizedBox(
          height: 40,
          child: TextFormField(
            controller: controller,
            readOnly: isReadOnly!,
            obscureText: isSecured!,
            decoration: InputDecoration(
                border: InputBorder.none,
                suffixIcon: suffix,
                hintText: hint,
                contentPadding: EdgeInsets.zero),
          ),
        ),
        Divider(
          color: ColorHelper.doveGray.withOpacity(0.5),
        )
      ],
    );
  }
}

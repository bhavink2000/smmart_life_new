import 'package:flutter/material.dart';
import '../../../../../App Helper/color_helper.dart';

class SearchFieldHome extends StatelessWidget {
  final String? hint ;
  final Icon? sofixicon, prifix;
  final VoidCallback? onTapIcon, onTap;
  final bool? isReadOnly;
  final FormFieldValidator? validator ;
  final TextEditingController? controller;
  const SearchFieldHome({super.key, this.hint, this.sofixicon, this.prifix, this.onTapIcon, this.isReadOnly, this.validator, this.controller, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: controller,
        onTap: onTap,
        autofocus: true,
        readOnly: isReadOnly == null ? false : isReadOnly!,
        decoration: InputDecoration(
            prefixIcon: prifix,
            hintText: hint,
            hintStyle: const TextStyle(fontSize: 14),
            contentPadding: const EdgeInsets.symmetric(vertical: 10),
            fillColor: ColorHelper.silver.withOpacity(0.2),
            filled: true,
            border: InputBorder.none,
            suffixIcon: sofixicon == null
                ? null
                : IconButton(onPressed: onTapIcon, icon: sofixicon!)
        ),
        validator: validator,
      ),
    );
  }
}

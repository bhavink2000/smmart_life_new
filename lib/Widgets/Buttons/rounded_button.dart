import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/App%20Helper/font_helper.dart';

class RoundedButton extends StatelessWidget {
  final String? btnLabel ;
  final Color? btnColor, textColor ;
  final VoidCallback? btnOnTap ;
  final double? fontSize;
  const RoundedButton({super.key, this.btnLabel, this.btnColor, this.btnOnTap, this.textColor, this.fontSize,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: btnOnTap,
      child: Container(
        width: Get.width / 1.2,
        padding: const EdgeInsets.symmetric(vertical: 12, /*horizontal: Get.width / 4.5*/),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: btnColor,
        ),
        alignment: Alignment.center,
        child: Text(btnLabel!, style: TextStyle(
            color: textColor ?? Colors.white,
          letterSpacing: 2.25,
          fontSize: fontSize ?? 18,
          // fontSize: _screenModal!.rtoHW! * 15,
          fontFamily: FontHelper.avenirMedium,
          // letterSpacing: 2.25,
          // color: Colors.white,
        ),),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../App Helper/color_helper.dart';
import '../../../../../App Helper/font_helper.dart';

personalInformationAppbar() {
  return AppBar(
    elevation: 0,
    scrolledUnderElevation: 0,
    backgroundColor: ColorHelper.brown,
    title: const Text(
      'PERSONAL INFORMATION',
      style: TextStyle(
          fontFamily: FontHelper.avenirBook,
          fontSize: 14,
          letterSpacing: 1,
          color: Colors.white),
    ),
    centerTitle: true,
    automaticallyImplyLeading: false,
    leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: const ImageIcon(
          AssetImage('assets/images/back.png'),
          color: Colors.white,
        )),
  );
}

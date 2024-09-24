import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../App Helper/color_helper.dart';
import '../../../../../../../App Helper/font_helper.dart';

settingsAppbar() {
  return AppBar(
    backgroundColor: ColorHelper.brown,
    elevation: 0,
    scrolledUnderElevation: 0,
    title: const Text('SETTINGS',
        style: TextStyle(
            fontFamily: FontHelper.avenirBook,
            fontSize: 14,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
            color: Colors.white)),
    centerTitle: true,
    leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: const ImageIcon(
          AssetImage('assets/images/back.png'),
          color: Colors.white,
        )),
  ) ;
}
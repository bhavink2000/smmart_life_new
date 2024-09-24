import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../App Helper/color_helper.dart';
import '../../../../App Helper/font_helper.dart';
import '../../dashboard_screen.dart';

orderStatusAppbar() {
  return AppBar(
    elevation: 0,
    scrolledUnderElevation: 0,
    backgroundColor: ColorHelper.grenadier,
    automaticallyImplyLeading: false,
    // leading: IconButton(
    //     onPressed: () {
    //       Get.back();
    //     },
    //     icon: const ImageIcon(
    //       AssetImage('assets/images/back.png'),
    //       color: Colors.white,
    //     )),
    title: const Text('ORDER STATUS',
        style: TextStyle(
            fontFamily: FontHelper.avenirBook,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            color: Colors.white)),
    centerTitle: true,
    actions: [
      IconButton(
          onPressed: () {
            Get.offAll(() => DashboardScreen());
          },
          icon: const Icon(
            Icons.clear,
            size: 30,
            color: Colors.white,
          )),
      const SizedBox(width: 10,)
    ],
  ) ;
}
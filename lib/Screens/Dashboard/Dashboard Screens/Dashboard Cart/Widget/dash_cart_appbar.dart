import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Widget/dashboard_custom_bottom_nav_bar.dart';
import '../../../../../App Helper/font_helper.dart';

dashCartAppBar() {
  final controller = Get.put(BottomNavBarController());
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    scrolledUnderElevation: 0,
    title: const Text('SHOPPING CART',
        style: TextStyle(
            fontFamily: FontHelper.avenirBook,
            fontSize: 14,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
            color: Colors.black)),
    centerTitle: true,
    leading: IconButton(
        onPressed: () {
          controller.index.value = 0;
          Get.back();
        },
        icon: const ImageIcon(
          AssetImage('assets/images/back.png'),
          color: Colors.black,
        )),
  );
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../App Helper/color_helper.dart';
import '../../../../App Helper/font_helper.dart';

orderHistoryAppbar(screenName) {
  return AppBar(
    elevation: 0,
    scrolledUnderElevation: 0,
    backgroundColor: ColorHelper.brown,
    leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: const ImageIcon(
          AssetImage('assets/images/back.png'),
          color: Colors.white,
        )),
    title: Text(screenName == 'order' ? 'MY ORDERS' : 'ORDER HISTORY',
        style: const TextStyle(
            fontFamily: FontHelper.avenirBook,
            fontSize: 14,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
            color: Colors.white)),
    centerTitle: true,
  ) ;
}
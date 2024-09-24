import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../App Helper/color_helper.dart';
import '../../../../../App Helper/font_helper.dart';

filterSortAppbar() {
  return AppBar(
    elevation: 2,
    backgroundColor: ColorHelper.brown,
    title: const Text('FILTER & SORT',
        style: TextStyle(
            fontFamily: FontHelper.avenirBook,
            fontSize: 14,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
            color: Colors.white),),
    centerTitle: true,
    automaticallyImplyLeading: false,
    actions: [
      IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const ImageIcon(
              AssetImage('assets/images/closeButton.png'),
              size: 15,
              color: Colors.white))
    ],
  ) ;
}
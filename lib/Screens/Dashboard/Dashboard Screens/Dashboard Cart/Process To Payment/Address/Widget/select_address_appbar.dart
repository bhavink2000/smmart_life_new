import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../App Helper/font_helper.dart';

selectAddressAppbar () {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: const Text('SELECT A DELIVERY ADDRESS',
        style: TextStyle(
            fontFamily: FontHelper.avenirBook,
            fontSize: 14,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
            color: Colors.black)),
    centerTitle: true,
    leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: const ImageIcon(
          AssetImage('assets/images/back.png'),
          color: Colors.black,
        )),
  );
}
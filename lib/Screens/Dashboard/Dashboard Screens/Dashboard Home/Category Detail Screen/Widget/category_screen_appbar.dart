import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../App Helper/font_helper.dart';

categoryScreenAppbar(name, clr) {
  return AppBar(
    backgroundColor: clr,
    elevation: 0,
    title: Text(name,
        style: const TextStyle(
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

import 'package:flutter/material.dart';
import '../../../../../App Helper/color_helper.dart';
import '../../../../../App Helper/font_helper.dart';

dashFavoritesAppBar() {
  return AppBar(
    backgroundColor: ColorHelper.grenadier,
    elevation: 0,
    scrolledUnderElevation: 0,
    title: const Text('WISHLIST',
        style: TextStyle(
            fontFamily: FontHelper.avenirBook,
            fontSize: 14,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
            color: Colors.white)),
    centerTitle: true,
    automaticallyImplyLeading: false,
    // leading: IconButton(
    //     onPressed: () {
    //       Get.back();
    //     },
    //     icon: const ImageIcon(
    //       AssetImage('assets/images/back.png'),
    //       color: Colors.white,
    //     )),
    // actions: [
    //   IconButton(
    //       onPressed: () {},
    //       icon: const ImageIcon(
    //         AssetImage('assets/images/delete_dustBin.png'),
    //         color: Colors.white,
    //         size: 20,
    //       )),
    //   const SizedBox(width: 10,)
    // ],
  );
}

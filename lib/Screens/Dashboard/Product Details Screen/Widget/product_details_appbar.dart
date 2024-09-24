import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Cart/dashboard_cart_screen.dart';
import 'package:smmart_life_new/Screens/Dashboard/Product%20Details%20Screen/Controller/product_details_controller.dart';
import '../../../../App Helper/color_helper.dart';
import '../../../../App Helper/font_helper.dart';

productDetailsAppBar(image, productTitle, price) {
  final controller = Get.put(ProductDetailsController());
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    scrolledUnderElevation: 0,
    leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: const ImageIcon(
          AssetImage('assets/images/back.png'),
          color: ColorHelper.black,
        )),
    title: const Text('PRODUCT DETAILS',
        style: TextStyle(
            fontFamily: FontHelper.avenirBook,
            fontSize: 14,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
            color: ColorHelper.black)),
    centerTitle: true,
    actions: [
      IconButton(
          onPressed: () {
            controller.shareWithLink(image, productTitle, price);
          },
          icon: const ImageIcon(
              AssetImage('assets/images/Product Page/Icons-icon-share-filled@3x.png'),
              size: 25,
              color: Colors.black)),
      IconButton(
          onPressed: () {
            Get.to(() => const DashboardCartScreen());
          },
          icon: const ImageIcon(
              AssetImage('assets/images/bottom/shopping-cart_outlined.png'),
              size: 25,
              color: Colors.black))
    ],
  );
}

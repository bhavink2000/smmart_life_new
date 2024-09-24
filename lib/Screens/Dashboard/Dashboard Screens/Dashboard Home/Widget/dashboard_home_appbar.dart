import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Screens/Dashboard/Widget/Drawer/filter_bottomsheet.dart';

import '../../../../../App Helper/color_helper.dart';

dashHomeAppBar() {
  return AppBar(
    backgroundColor: ColorHelper.grenadier,
    elevation: 0,
    scrolledUnderElevation: 0,
    title: SizedBox(
      height: Get.height / 13,
      child: Image.asset('assets/images/smmartLifeHeadingForLoginScreen.png'),
    ),
    centerTitle: true,
    leading: IconButton(
      onPressed: () {
        Future.delayed(Duration.zero, () {
          filterBottomSheet();
        });
      },
      icon: const ImageIcon(
        AssetImage('assets/images/options-outline.png'),
        color: Colors.white,
      ),
    ),
  );
}

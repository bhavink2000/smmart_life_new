import 'package:flutter/material.dart';
import '../../../../../App Helper/color_helper.dart';
import '../../../../../App Helper/font_helper.dart';
import '../../../Widget/Drawer/filter_bottomsheet.dart';

dashCategoriesAppbar() {
  return AppBar(
      backgroundColor: ColorHelper.brown,
      elevation: 0,
      scrolledUnderElevation: 0,
      title: const Text('CATEGORIES',
          style: TextStyle(
              fontFamily: FontHelper.avenirBook,
              fontSize: 14,
              letterSpacing: 1,
              fontWeight: FontWeight.bold,
              color: Colors.white)),
      centerTitle: true,
      automaticallyImplyLeading: false,
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
      ));
}

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/App%20Helper/color_helper.dart';
import 'package:smmart_life_new/App%20Helper/font_helper.dart';
import 'package:smmart_life_new/Widgets/Buttons/rounded_button.dart';

alertBoxForCanNotWriteReview() {
  Get.dialog(
    BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: AlertDialog(
        elevation: 0,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: const Row(
          children: [
            Icon(
              Icons.warning_amber_rounded,
              size: 40,
            ),
            Text(
              'We apologize but\n you must buy the product\n to write a review.',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: FontHelper.avenirBook,
                  color: ColorHelper.darkGray),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: RoundedButton(
              btnOnTap: () {
                Get.back();
              },
              btnLabel: 'OK',
              fontSize: 12,
              btnColor: ColorHelper.grenadier,
            ),
          )
        ],
      ),
    ),
    barrierDismissible: false,
  );
}

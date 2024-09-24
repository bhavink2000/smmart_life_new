import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../App Helper/color_helper.dart';
import '../../../../../App Helper/font_helper.dart';

class OTPSCreenNumberShow extends StatelessWidget {
  final int? mobileNumber;
  const OTPSCreenNumberShow({super.key, this.mobileNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 2.5,
      width: Get.width,
      decoration: const BoxDecoration(
          color: ColorHelper.brown,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.elliptical(200, 210),
              bottomLeft: Radius.elliptical(200, 210))),
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, right: 5.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                    onPressed: () {
                      log('message');
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.clear,
                      color: Colors.white,
                      size: 30,
                    )),
              ),
            ),
            SizedBox(height: Get.height / 10),
            Container(
              width: Get.width,
              alignment: Alignment.center,
              child: const Text(
                'Enter the 4 digit code sent to:',
                style: TextStyle(
                    fontFamily: FontHelper.arvinHavy,
                    color: Colors.white,
                    fontSize: 21,
                    letterSpacing: -0.5),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: Get.width,
              alignment: Alignment.center,
              child: Text(
                '+91 $mobileNumber',
                style: const TextStyle(
                    fontFamily: FontHelper.arvinHavy,
                    color: ColorHelper.verdunGreen,
                    fontSize: 21,
                    letterSpacing: -0.27),
              ),
            )
          ],
        ),
      ),
    );
  }
}

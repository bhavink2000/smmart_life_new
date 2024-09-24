import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Screens/Authentication/Login/login_screen.dart';

import '../../../../../App Helper/color_helper.dart';
import '../../../../../App Helper/font_helper.dart';

class LogoutAlertbox extends StatelessWidget {
  const LogoutAlertbox({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10,
          sigmaY: 10,
        ),
        child: AlertDialog(
          surfaceTintColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          // contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          elevation: 5,
          content: Container(
            color: Colors.white,
            height: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/smmart_life_new_logo.png',
                    height: 90),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Do you want to logout?',
                  style: TextStyle(
                      fontFamily: FontHelper.arvinHavy,
                      fontSize: 18,
                      color: ColorHelper.brown),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 5),
                        decoration: BoxDecoration(
                            color: ColorHelper.brown,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Text(
                          'NO',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: FontHelper.avenirMedium),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.offAll(() => LoginScreen());
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 5),
                        decoration: BoxDecoration(
                            color: ColorHelper.grenadier,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Text('YES',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: FontHelper.avenirMedium)),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

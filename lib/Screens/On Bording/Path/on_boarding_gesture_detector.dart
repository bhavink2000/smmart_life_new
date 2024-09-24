import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Screens/Authentication/Login/login_screen.dart';
import 'Controller/gesture_controller.dart';

class SplashScreenGestureDetector extends StatelessWidget {
  const SplashScreenGestureDetector({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(GestureController());
    return GestureDetector(
      onHorizontalDragEnd: (value) {
        try {
          if (value.velocity.pixelsPerSecond.dx < 0) {
            if (controller.startFirstRound.value) {
              controller.setFirstRound(true);
            } else if (controller.startFirstRound.value &&
                controller.startSecondRound.value) {
              controller.setSecondRound(true);
            } else {
              Get.to(() => LoginScreen());
            }
          }
        } catch (e) {
          log(e.toString());
        }
      },
    );
  }
}

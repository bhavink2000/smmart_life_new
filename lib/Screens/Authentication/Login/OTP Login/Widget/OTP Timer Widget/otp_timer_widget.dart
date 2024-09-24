import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/App%20Helper/color_helper.dart';
import 'package:smmart_life_new/App%20Helper/font_helper.dart';
import 'package:smmart_life_new/Screens/Authentication/Login/OTP%20Login/Widget/OTP%20Timer%20Widget/Controller/otp_timer_controller.dart';

class OTPTimer extends StatelessWidget {
  OTPTimer({super.key});
  final controller = Get.put(OTPTimerController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Didn’t receive the SMS?',
          style: TextStyle(
              fontFamily: FontHelper.avenirBook,
              color: ColorHelper.charade,
              letterSpacing: -0.2,
              fontSize: 14),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CountdownTimer(
              endWidget: InkWell(
                onTap: () => log('send again otp'),
                child: const Text(
                  'Resend OTP',
                  style: TextStyle(
                      fontFamily: FontHelper.avenirBook,
                      color: ColorHelper.brown,
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                      decorationColor: ColorHelper.brown,
                      decorationStyle: TextDecorationStyle.solid,
                      letterSpacing: -0.2),
                ),
              ),
              controller: controller.countdownTimerController,
              textStyle: const TextStyle(
                  fontFamily: FontHelper.avenirBook,
                  fontSize: 15,
                  letterSpacing: -0.2,
                  color: ColorHelper.brown),
            ),
          ],
        )
      ],
    );
  }
}

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Screens/Authentication/Login/Controller/login_controller.dart';
import 'package:smmart_life_new/Screens/Authentication/Login/OTP%20Login/enter_otp_screen.dart';
import '../../../../App Helper/color_helper.dart';
import '../../../../App Helper/snackbar_helper.dart';
import '../../../../Widgets/Buttons/rounded_button.dart';
import 'login_filds.dart';

class LoginWithOTP extends StatelessWidget {
  LoginWithOTP({super.key});
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(height: Get.height / 14),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'We will send you an One Time Password on this mobile number',
              style: TextStyle(
                  fontSize: 13,
                  color: ColorHelper.charade.withOpacity(0.5),
                  letterSpacing: 0.12),
            ),
          ),
          const SizedBox(height: 20),
          LoginFields(
            isNumber: true,
            label: 'Mobile number',
            controller: controller.mobileNumberController,
            prifix: const Icon(Icons.phone_outlined),
            validator: (value) {
              if (controller.mobileNumberController.text.contains('.') ||
                  controller.mobileNumberController.text.contains('-')) {
                return 'Invalid Number';
              }
              return null;
            },
          ),
          const SizedBox(height: 30),
          RoundedButton(
            btnLabel: 'SEND OTP',
            fontSize: 12,
            btnColor: ColorHelper.grenadier,
            btnOnTap: () {
              if (controller.mobileNumberController.text == '') {
                SnackBarHelper.getWarningMsg('This field is required.');
              } else if (controller.mobileNumberController.text.length != 10) {
                SnackBarHelper.getWarningMsg('Enter your valid mobile number.');
              } else {
                log('Send otp');
                Get.to(
                  () => EnterOTPScreen(
                    mobileNumber:
                        int.parse(controller.mobileNumberController.text),
                  ),
                  // transition: Transition.circularReveal
                );
              }
            },
          )
        ],
      ),
    );
  }
}

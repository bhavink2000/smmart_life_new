import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:smmart_life_new/App%20Helper/Loading%20Helper/loading_helper.dart';
import 'package:smmart_life_new/App%20Helper/color_helper.dart';
import 'package:smmart_life_new/Screens/Authentication/Login/OTP%20Login/Controller/enter_otp_controller.dart';
import 'package:smmart_life_new/Screens/Authentication/Login/OTP%20Login/Widget/OTP%20Timer%20Widget/otp_timer_widget.dart';
import 'package:smmart_life_new/Screens/Dashboard/dashboard_screen.dart';
import 'package:smmart_life_new/Widgets/Buttons/rounded_button.dart';
import 'Widget/otp_screen_number_show_widget.dart';

class EnterOTPScreen extends StatelessWidget {
  final int? mobileNumber ;
  EnterOTPScreen({super.key, this.mobileNumber});
  final controller = Get.put(EnterOTPController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            OTPSCreenNumberShow(mobileNumber: mobileNumber),
            SizedBox(height: Get.height / 18,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: PinCodeTextField(
                    appContext: context,
                    length: 4,
                  keyboardType: TextInputType.number,
                  autoUnfocus: true,
                  pinTheme: PinTheme(
                    selectedColor: ColorHelper.verdunGreen,
                    activeColor: ColorHelper.silver,
                    inactiveColor: ColorHelper.silver,
                    fieldWidth: 60
                  ),
                  onChanged: (value) {
                      controller.otpText.value = value ;
                      log('otp Text ==> ${controller.otpText.value}');
                  },
                ),

            ),
            SizedBox(height: Get.height / 20,),
            OTPTimer(),
            SizedBox(height: Get.height / 20,),
            RoundedButton(
              btnLabel: 'VERIFY',
              btnColor: ColorHelper.brown,
              fontSize: 13,
              btnOnTap: (){
                LoadingHelper.greenLoading();
                Timer(const Duration(seconds: 3), () {
                  LoadingHelper.onLoadingExit();
                  Get.off(() =>DashboardScreen());
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

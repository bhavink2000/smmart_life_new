import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Screens/Authentication/Login/Widget/first_row_card.dart';
import 'package:smmart_life_new/Screens/Authentication/Login/Widget/login_screen_with_password.dart';
import 'package:smmart_life_new/Screens/Authentication/Login/Widget/login_with_otp.dart';
import 'Controller/login_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: GestureDetector(
        onHorizontalDragEnd: (dragEndDetails) {
          if (dragEndDetails.primaryVelocity! < 0) {
            controller.tabIndex.value = 1;
          } else if (dragEndDetails.primaryVelocity! > 0) {
            controller.tabIndex.value = 0;
          }
        },
        child: SizedBox(
          width: Get.width,
          child: Obx(
            () => Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                LoginFirstRowCard(),
                Flexible(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Stack(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn,
                          transform: Matrix4.translationValues(
                              controller.tabIndex.value == 0 ? 0 : -Get.width,
                              0,
                              0),
                          child: LoginWithPass(),
                        ),
                        AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          transform: Matrix4.translationValues(
                              controller.tabIndex.value == 1 ? 0 : Get.width,
                              0,
                              0),
                          curve: Curves.fastLinearToSlowEaseIn,
                          child: LoginWithOTP(),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

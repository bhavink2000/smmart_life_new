import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/App%20Helper/font_helper.dart';
import 'package:smmart_life_new/Screens/Authentication/Login/login_screen.dart';
import 'package:smmart_life_new/Widgets/Buttons/rounded_button.dart';
import '../../../../App Helper/color_helper.dart';

class CheckEmailAfterForgot extends StatelessWidget {
  const CheckEmailAfterForgot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                    onPressed: () {
                      Get.offAll(()=> LoginScreen());
                    },
                    icon: const Icon(
                      Icons.clear,
                      size: 30,
                    )),
              ),
            ),
            SizedBox(
              height: Get.height / 6,
            ),
            Image.asset(
              'assets/images/ForgotPasswordSentScreen.png',
              height: 150,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Check your email',
              style: TextStyle(
                  fontFamily: FontHelper.segoeuiRegular, fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'We\'ve sent you instructions on how to reset the password(also check the spam folder).',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: FontHelper.avenirBook,
                  color: ColorHelper.doveGray),
            ),
            SizedBox(
              height: Get.height / 3.5,
            ),
            RoundedButton(
              btnLabel: 'OPEN EMAIL',
              fontSize: 12,
              btnColor: ColorHelper.grenadier,
              btnOnTap: () {},
            )
          ],
        ),
      ),
    );
  }
}

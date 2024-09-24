import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Screens/Authentication/Forgot%20Password/Check%20Email%20After%20Forgot/check_email_after_forgot.dart';
import 'package:smmart_life_new/Screens/Authentication/Forgot%20Password/Controller/forgot_password_controller.dart';
import 'package:smmart_life_new/Widgets/Buttons/rounded_button.dart';
import 'package:smmart_life_new/Widgets/Text%20Fields/text_input_fields.dart';
import '../../../../App Helper/color_helper.dart';
import '../../../App Helper/font_helper.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgotPasswordController());
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Reset password',
          style: TextStyle(
              fontFamily: FontHelper.avenirBook,
              letterSpacing: 1,
              fontSize: 14,
              color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: ColorHelper.grenadier,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const ImageIcon(
              AssetImage('assets/images/back.png'),
              color: Colors.white,
            )),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: Get.width,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                  color: Colors.white),
              child: Column(
                children: [
                  SizedBox(height: Get.height / 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Forgot your password?',
                      style: TextStyle(
                          fontFamily: FontHelper.arvinHavy,
                          fontSize: 20,
                          color: ColorHelper.black,
                          letterSpacing: 0.1),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Text(
                        'Enter your email address and we will send you '
                        'instructions on how to reset your password.',
                        style: TextStyle(
                            fontFamily: FontHelper.avenirBook,
                            fontSize: 14,
                            color: ColorHelper.darkGray,
                            letterSpacing: 0.1),
                        textAlign: TextAlign.center),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      children: [
                        Form(
                          key: formKey,
                          child: TextInputField(
                            label: 'Email',
                            controller: controller.emailController,
                            validator: (value) {
                              if (value == null || value == '') {
                                return 'Enter email address';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(height: Get.height / 2),
                        RoundedButton(
                          btnLabel: 'SEND EMAIL',
                          fontSize: 12,
                          btnColor: ColorHelper.peachOrange,
                          btnOnTap: () {
                            if (formKey.currentState!.validate()) {
                              Get.to(() => const CheckEmailAfterForgot());
                            }
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

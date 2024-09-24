import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Screens/Authentication/Forgot%20Password/forgot_password_screen.dart';
import 'package:smmart_life_new/Screens/Authentication/Login/Widget/login_filds.dart';
import 'package:smmart_life_new/Screens/Authentication/Register/register_user_screen.dart';
import 'package:smmart_life_new/Screens/Dashboard/dashboard_screen.dart';
import '../../../../App Helper/color_helper.dart';
import '../../../../App Helper/font_helper.dart';
import '../../../../Widgets/Buttons/rounded_button.dart';
import '../Controller/login_controller.dart';

class LoginWithPass extends StatelessWidget {
  LoginWithPass({super.key});
  final controller = Get.put(LoginController());
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Form(
        key: _key,
        child: Column(
          children: [
            Container(
                height: Get.height / 8),
            LoginFields(
              label: 'Username or email',
              controller: controller.userNameController,
              validator: (value) {
                if (value == null || value == '') {
                  return 'Enter username or email';
                }
                return null;
              },
              prifix: const Icon(Icons.email_outlined),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(
              () => LoginFields(
                label: 'Password',
                prifix: const Icon(Icons.lock_outlined),
                controller: controller.passwordController,
                sofixicon: controller.isSecured.value
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
                onTapIcon: controller.passToggle,
                isSecure: controller.isSecured.value,
                validator: (value) {
                  if (value == null || value == '') {
                    return 'Enter password';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Obx(
                        () => Checkbox(
                          value: controller.isRemembered.value,
                          onChanged: (newVal) async {
                            await controller.checkToggle(newVal);
                            log('$newVal');
                          },
                          activeColor: ColorHelper.grenadier,
                        ),
                      ),
                      const Text(
                        'Remember me',
                        style: TextStyle(
                            fontFamily: FontHelper.avenirBook,
                            fontSize: 14,
                            letterSpacing: 0.23),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () => Get.to(()=>const ForgotPasswordScreen()),
                    child: const Text(
                      'Forgot password?',
                      style: TextStyle(
                          fontFamily: FontHelper.avenirBook,
                          fontSize: 14,
                          letterSpacing: 0.23),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: Get.height / 8,
            ),
            RoundedButton(
              btnLabel: 'LOGIN',
              fontSize: 12,
              btnColor: ColorHelper.grenadier,
              btnOnTap: () {
                if (_key.currentState!.validate()) {
                  Get.off(() => DashboardScreen());
                }
              },
            ),
            const SizedBox(height: 20),
            RoundedButton(
              btnLabel: 'SIGN UP',
              fontSize: 12,
              btnColor: ColorHelper.brown,
              btnOnTap: () => Get.to(()=> RegisterUserScreen()),
            )
          ],
        ),
      ),
    );
  }
}

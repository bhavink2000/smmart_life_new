import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Screens/Authentication/Login/Controller/login_controller.dart';
import '../../../../App Helper/color_helper.dart';
import '../../../../App Helper/font_helper.dart';

class LoginFirstRowCard extends StatelessWidget {
  LoginFirstRowCard({super.key});
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        width: Get.width,
        color: /*controller.tabIndex.value == 0 ? ColorHelper.Grenadier : ColorHelper.Brown*/
            controller.tabIndex.value == 0
                ? ColorHelper.lightBrown
                : ColorHelper.lightBrown,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: Get.height / 7,
                  child: Image.asset('assets/images/smmart_life_new_logo.png')),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => controller.functionTab1(),
                    child: Obx(
                      () => Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 20),
                        decoration: BoxDecoration(
                            // color: controller.tabIndex.value == 0 ? Colors.white : ColorHelper.SurfCrest,
                            color: controller.tabIndex.value == 0
                                ? Colors.white
                                : ColorHelper.grenadier,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                        child: Row(
                          children: [
                            Text(
                              'Login With',
                              style: TextStyle(
                                  fontFamily: FontHelper.avenirBook,
                                  fontSize: 13,
                                  // color: controller.tabIndex.value == 0 ? ColorHelper.Grenadier : ColorHelper.Charade
                                  color: controller.tabIndex.value == 0
                                      ? ColorHelper.grenadier
                                      : Colors.white),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Password',
                              style: TextStyle(
                                  fontFamily: FontHelper.avenirMedium,
                                  fontSize: 16,
                                  // color: controller.tabIndex.value == 0 ? ColorHelper.Grenadier : ColorHelper.Charade
                                  color: controller.tabIndex.value == 0
                                      ? ColorHelper.grenadier
                                      : Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () => controller.functionTab2(),
                    child: Obx(
                      () => Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 20),
                        decoration: BoxDecoration(
                            color: controller.tabIndex.value == 0
                                ? ColorHelper.grenadier
                                : Colors.white,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                        child: Row(
                          children: [
                            Text(
                              'Login With',
                              style: TextStyle(
                                  fontFamily: FontHelper.avenirBook,
                                  fontSize: 13,
                                  color: controller.tabIndex.value == 0
                                      ? /*ColorHelper.Charade*/ Colors.white
                                      : ColorHelper.grenadier),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'OTP',
                              style: TextStyle(
                                  fontFamily: FontHelper.avenirMedium,
                                  fontSize: 16,
                                  color: controller.tabIndex.value == 0
                                      ? /*ColorHelper.Charade*/ Colors.white
                                      : ColorHelper.grenadier),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

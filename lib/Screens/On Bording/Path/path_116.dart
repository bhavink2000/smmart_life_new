import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../on_boarding_constants.dart';

class Path116 extends StatelessWidget {
  const Path116({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      width: Get.width,
      child: _Path116Animation(),
    );
  }
}

class _Path116Animation extends StatelessWidget {
  _Path116Animation();
  final controller = Get.put(_Path116Controller());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AnimatedContainer(
            duration: kAnimationDuration,
            width: controller.imageWidth!.value,
            transform: controller.matrix4TranslationValues!.value,
            child: AnimatedContainer(
              duration: kAnimationDuration,
              transform: controller.matrix4RotationY!.value,
              onEnd: controller.setLastValues,
              child: AnimatedContainer(
                duration: kAnimationDuration,
                transform: controller.matrix4RotationZ!.value,
                child: Image.asset(
                  'assets/images/Onboarding - 01/Path 116@3x.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Path116Controller extends GetxController {
  RxDouble? imageWidth = (Get.width * 0.78).obs;

  Rx<Matrix4>? matrix4TranslationValues =
      Matrix4.translationValues(-Get.width * 0.025, (Get.height * 0.015), 0)
          .obs;

  Rx<Matrix4>? matrix4RotationY = Matrix4.rotationY(0).obs;

  Rx<Matrix4>? matrix4RotationZ = Matrix4.rotationZ(0).obs;

  @override
  void onInit() {
    Future.delayed(const Duration(milliseconds: 100), _setMiddleValues);
    super.onInit();
  }

  void _setMiddleValues() {
    matrix4TranslationValues!.value =
        Matrix4.translationValues(Get.width * 0.752, (Get.height * 0.015), 0);
    matrix4RotationY!.value = Matrix4.rotationY(pi);
  }

  void setLastValues() {
    matrix4RotationZ!.value = Matrix4.rotationZ(-pi * 0.5);
    matrix4TranslationValues!.value =
        Matrix4.translationValues(Get.width * 0.275, (Get.height * 0.18), 0);
    update();
  }
}

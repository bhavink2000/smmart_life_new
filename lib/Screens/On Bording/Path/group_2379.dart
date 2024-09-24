import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../on_boarding_constants.dart';

class Group2379 extends StatelessWidget {
  const Group2379({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height,
      child: _Group2379Animation(),
    );
  }
}

class _Group2379Animation extends StatelessWidget {
  _Group2379Animation();
  final controller = Get.put(_Group2379Controller());
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
            transform: controller.matrix4Transition!.value,

            /// this Container Handle x Axis
            child: AnimatedContainer(
              duration: kAnimationDuration,
              transform: controller.matrix4RotationX!.value,
              child: AnimatedContainer(
                onEnd: controller.setLastValues,
                duration: kAnimationDuration,
                transform: controller.matrix4RotationZ!.value,
                child: Image.asset(
                  'assets/images/Onboarding - 01/Group 2379@3x.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Group2379Controller extends GetxController {
  RxDouble? imageWidth = (Get.width * 0.3).obs;

  Rx<Matrix4>? matrix4RotationZ = Matrix4.rotationZ(0).obs;
  Rx<Matrix4>? matrix4RotationX = Matrix4.rotationX(0).obs;
  Rx<Matrix4>? matrix4Transition =
      Matrix4.translationValues(Get.width * 0.055, -Get.height * 0.088, 0).obs;

  @override
  void onInit() {
    Future.delayed(const Duration(milliseconds: 100), _setMiddleValues);
    super.onInit();
  }

  void _setMiddleValues() {
    matrix4Transition!.value =
        Matrix4.translationValues(Get.width * 0.52, -Get.height * 0.01, 0);

    matrix4RotationX!.value = Matrix4.rotationX(pi);

    matrix4RotationZ!.value = Matrix4.rotationZ(pi / 2);
  }

  void setLastValues() {
    matrix4Transition!.value =
        Matrix4.translationValues(Get.width * 0.3, Get.height * 0.04, 0);

    matrix4RotationX!.value = Matrix4.rotationZ(0);
    matrix4RotationZ!.value = Matrix4.rotationZ((-2.09));
    update();
  }
}

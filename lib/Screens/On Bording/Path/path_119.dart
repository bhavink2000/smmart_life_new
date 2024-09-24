import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../on_boarding_constants.dart';

class Path119 extends StatelessWidget {
  const Path119({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      width: Get.width,
      child: _Path119Animation(),
    );
  }
}

class _Path119Animation extends StatelessWidget {
  _Path119Animation();
  final controller = Get.put(_Path119Controller());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedContainer(
          onEnd: controller.setLastValues,
          duration: kAnimationDuration,
          width: Get.width * 0.51,
          transform: controller.matrix4Translation!.value,
          child: Image.asset(
            'assets/images/Onboarding - 01/Path 119@3x.png',
          ),
        ),
      ],
    ));
  }
}

class _Path119Controller extends GetxController {
  Rx<Matrix4>? matrix4Translation =
      Matrix4.translationValues(Get.width * 0.54, Get.height * (-0.054), 0).obs;

  @override
  void onInit() {
    Future.delayed(const Duration(milliseconds: 75), () {
      _setMiddleValues();
    });
    super.onInit();
  }

  void _setMiddleValues() {
    matrix4Translation!.value = Matrix4.translationValues(
        Get.width * (-0.04), (Get.height * (-0.088)), 0);
  }

  void setLastValues() {
    matrix4Translation!.value =
        Matrix4.translationValues(Get.width * 0.64, Get.height * 0.12, 0);
    update();
  }
}

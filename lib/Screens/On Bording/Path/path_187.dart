import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../on_boarding_constants.dart';

class Path187 extends StatelessWidget {
  const Path187({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      width: Get.width,
      child: _Path187Animation(),
    );
  }
}

class _Path187Animation extends StatelessWidget {
  _Path187Animation();
  final controller = Get.put(_Path187Controller());
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
            transform: controller.matrix4TransitionValues!.value,
            child: AnimatedContainer(
              duration: kAnimationDuration,
              transform: controller.matrix4RotationZ!.value,
              onEnd: controller.setLastValues,
              child: Image.asset(
                'assets/images/Onboarding - 01/Path 187@3x.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Path187Controller extends GetxController {
  Rx<Matrix4>? matrix4TransitionValues =
      Matrix4.translationValues(Get.width * 0.53, Get.height * 0.053, 0).obs;

  Rx<Matrix4>? matrix4RotationZ = Matrix4.rotationZ(0).obs;

  RxDouble? imageWidth = (Get.width * 0.5).obs;

  @override
  void onInit() {
    Future.delayed(const Duration(milliseconds: 100), _setMiddleValues);
    super.onInit();
  }

  void _setMiddleValues() {
    matrix4TransitionValues!.value =
        Matrix4.translationValues(Get.width * 0.715, Get.height * 0.264, 0);
    matrix4RotationZ!.value = Matrix4.rotationZ(-2.09);
  }

  void setLastValues() {
    matrix4TransitionValues!.value =
        Matrix4.translationValues(Get.width * 0.575, -Get.height * 0.035, 0);
    matrix4RotationZ!.value = Matrix4.rotationZ(0);
    update();
  }
}

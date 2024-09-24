import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../on_boarding_constants.dart';

class Path188 extends StatelessWidget {
  const Path188({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height,
      child: _Path188Animation(),
    );
  }
}

class _Path188Animation extends StatelessWidget {
  _Path188Animation();
  final controller = Get.put(_Path188Controller());
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
                'assets/images/Onboarding - 01/Path 188@3x.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Path188Controller extends GetxController {
  Rx<Matrix4>? matrix4TransitionValues =
      Matrix4.translationValues(Get.width * 0.452, Get.height * 0.105, 0).obs;
  Rx<Matrix4>? matrix4RotationZ = Matrix4.rotationZ(0).obs;

  RxDouble? imageWidth = (Get.width * 0.55).obs;

  @override
  void onInit() {
    Future.delayed(const Duration(milliseconds: 100), _setMiddleValues);
    super.onInit();
  }

  void _setMiddleValues() {
    matrix4TransitionValues!.value =
        Matrix4.translationValues(Get.width * 0.38, Get.height * 0.18, 0);
    matrix4RotationZ!.value = Matrix4.rotationZ(-0.73);
  }

  void setLastValues() {
    matrix4RotationZ!.value = Matrix4.rotationZ(1.42);
    matrix4TransitionValues!.value =
        Matrix4.translationValues(Get.width * 0.81, Get.height * 0.057, 0);
    update();
  }
}

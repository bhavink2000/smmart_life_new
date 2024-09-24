import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../on_boarding_constants.dart';

class Path117 extends StatelessWidget {
  const Path117({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      width: Get.width,
      child: _Path117Animation(),
    );
  }
}

class _Path117Animation extends StatelessWidget {
  _Path117Animation();
  final controller = Get.put(_Path117Controller());
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
            onEnd: controller.setLastValues,
            child: AnimatedContainer(
              duration: kAnimationDuration,
              transform: controller.matrix4RotationZ!.value,
              child: Image.asset(
                'assets/images/Onboarding - 01/Path 117@3x.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Path117Controller extends GetxController {
  RxDouble? imageWidth = (Get.width * 0.65).obs;
  Rx<Matrix4>? matrix4TransitionValues =
      Matrix4.translationValues(-Get.width * 0.16, Get.height * 0.075, 0).obs;
  Rx<Matrix4>? matrix4RotationZ = Matrix4.rotationZ(0).obs;

  @override
  void onInit() {
    Future.delayed(const Duration(milliseconds: 100), _setMiddleValues);
    super.onInit();
  }

  void _setMiddleValues() {
    matrix4TransitionValues!.value =
        Matrix4.translationValues(-Get.width * 0.05, Get.height * 0.0, 0);
  }

  void setLastValues() {
    matrix4RotationZ!.value = Matrix4.rotationZ(0.6);
    matrix4TransitionValues!.value =
        Matrix4.translationValues(Get.width * 0.0, -Get.height * 0.12, 0);
    update();
  }
}

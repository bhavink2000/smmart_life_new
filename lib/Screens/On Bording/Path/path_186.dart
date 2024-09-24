import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../on_boarding_constants.dart';

class Path186 extends StatelessWidget {
  const Path186({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      width: Get.width,
      child: _Path186Animation(),
    );
  }
}

class _Path186Animation extends StatelessWidget {
  _Path186Animation();
  final controller = Get.put(_Path186Controller());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedContainer(
            width: controller.imageWidth!.value,
            transform: controller.matrix4TranslationValues!.value,
            duration: kAnimationDuration,
            child: AnimatedContainer(
              duration: kAnimationDuration,
              transform: controller.matrix4RotationZ!.value,
              onEnd: controller.setLastValues,
              child: Image.asset(
                'assets/images/Onboarding - 01/Path 186@3x.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Path186Controller extends GetxController {
  RxDouble? imageWidth = (Get.width * 0.74).obs;

  Rx<Matrix4>? matrix4TranslationValues =
      Matrix4.translationValues(Get.width * 0.27, Get.height * 0.045, 0).obs;

  Rx<Matrix4>? matrix4RotationZ = Matrix4.rotationZ(0).obs;

  @override
  void onInit() {
    // _setInitialValues();

    Future.delayed(const Duration(milliseconds: 100), _setMiddleValue);
    super.onInit();
  }

  void _setMiddleValue() {
    imageWidth!.value = Get.width * 0.85;
    matrix4TranslationValues!.value =
        Matrix4.translationValues(0, (Get.height * 0.30), 0);
    matrix4RotationZ!.value = Matrix4.rotationZ(-1.23);
  }

  void setLastValues() {
    imageWidth!.value = Get.width * 0.735;
    matrix4TranslationValues!.value =
        Matrix4.translationValues(Get.width * (-0.04), (Get.height * 0.03), 0);
    matrix4RotationZ!.value = Matrix4.rotationZ(0.105);
    update();
  }
}

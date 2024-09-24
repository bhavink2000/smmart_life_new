import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../on_boarding_constants.dart';

class Group2311 extends StatelessWidget {
  const Group2311({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      width: Get.width,
      child: _Group2311Animation(),
    );
  }
}

class _Group2311Animation extends StatelessWidget {
  final controller = Get.put(_Group2311Controller());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedContainer(
            duration: kAnimationDuration,
            width: controller.imageWidth!.value,
            transform: controller.matrix4Translation!.value,
            child: AnimatedContainer(
              width: controller.imageWidth!.value,
              duration: kAnimationDuration,
              transform: controller.matrix4RotationZ!.value,
              onEnd: controller.setLastValues,
              child: Image.asset(
                'assets/images/Onboarding - 01/Group 2311@3x.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Group2311Controller extends GetxController {
  RxDouble? imageWidth = (Get.width * 0.37).obs;

  Rx<Matrix4>? matrix4Translation =
      Matrix4.translationValues(Get.width * 0.399, Get.height * 0.15, 0).obs;

  Rx<Matrix4>? matrix4RotationZ = Matrix4.rotationZ(0).obs;

  @override
  void onInit() {
    Future.delayed(const Duration(milliseconds: 100), () {
      _setMiddleValues();
    });
    super.onInit();
  }

  void _setMiddleValues() {
    matrix4Translation!.value =
        Matrix4.translationValues(Get.width * 0.469, Get.height * 0.119, 0);

    matrix4RotationZ!.value = Matrix4.rotationZ(-0.63);
  }

  void setLastValues() {
    matrix4Translation!.value =
        Matrix4.translationValues(Get.width * 0.075, Get.height * 0.2, 0);

    matrix4RotationZ!.value = Matrix4.rotationZ(-0.22);
    update();
  }
}

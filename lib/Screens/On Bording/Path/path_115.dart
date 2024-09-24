import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../on_boarding_constants.dart';
import 'Controller/duration_controller.dart';
import 'Controller/gesture_controller.dart';

class Path115 extends StatelessWidget {
  const Path115({super.key});

  @override
  Widget build(BuildContext context) {
    return _Path115Animation();
  }
}

class _Path115Animation extends StatelessWidget {
  _Path115Animation();
  final controller = Get.put(_Path115Controller());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedContainer(
              onEnd: () {
                controller.assignLastValues();
              },
              duration: kAnimationDuration,
              transform: controller.matrix4!.value,
              width: controller.imageWidth!.value,
              child: AnimatedContainer(
                duration: DurationController().duration.value,
                transform: controller.matrix4RotationZ!.value,
                child: Image.asset(
                  'assets/images/Onboarding - 01/Path 115@3x.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Path115Controller extends GetxController {
  Rx<Matrix4>? matrix4 =
      Matrix4.translationValues(Get.width * 0.305, Get.height * (-0.005), 0)
          .obs;

  Rx<Matrix4>? matrix4RotationZ = Matrix4.rotationZ(0).obs;

  RxDouble? imageWidth = (Get.width * 0.45).obs;

  GestureController? gestureController;

  @override
  void onInit() {
    Future.delayed(const Duration(milliseconds: 50), () {
      _assignMiddleValue();
    });
    super.onInit();
  }

  void _assignMiddleValue() {
    gestureController?.setFirstRound(true);
    matrix4 =
        Matrix4.translationValues(Get.width * 0.072, Get.height * (0.104), 0)
            .obs;
    imageWidth = (Get.width * 0.46).obs;
  }

  void assignLastValues() {
    matrix4!.value =
        Matrix4.translationValues(Get.width * 0.46, Get.height * (-0.05), 0);
    imageWidth!.value = (Get.width * 0.58);
    matrix4RotationZ!.value = Matrix4.rotationZ(0.59);
    update() ;
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../App Helper/color_helper.dart';

class BackgroundColor extends StatelessWidget {
  const BackgroundColor({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height,
      child: _BackgroundColorAnimation(),
    );
  }
}

class _BackgroundColorAnimation extends StatelessWidget {
  final controller = Get.put(BackGroundColorController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedContainer(
        duration: controller.duration!.value,
        color: controller.clr?.value,
        onEnd: controller.setLastValues(),
      ),
    );
  }
}

class BackGroundColorController extends GetxController {
  Rx<Duration>? duration = const Duration(milliseconds: 4000).obs;
  Rx<Color>? clr = ColorHelper.berylGreen.obs;

  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 1), _setMiddleValue);
    super.onInit();
  }

  void _setMiddleValue() {
    clr?.value = ColorHelper.athsSpecial;
  }

  setLastValues() {
    clr?.value = ColorHelper.berylGreen;
    update();
  }
}

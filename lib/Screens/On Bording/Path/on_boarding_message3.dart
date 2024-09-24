import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../on_boarding_constants.dart';
import 'message_box.dart';

class OnboardingMessage3 extends StatelessWidget {
  const OnboardingMessage3({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height,
      child: _OnboardingMessage3Animation(),
    );
  }
}

class _OnboardingMessage3Animation extends StatelessWidget {
  _OnboardingMessage3Animation();
  final controller = Get.put(_OnBoardingMessage3Controller());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedOpacity(
            duration: kAnimationDuration,
            opacity: controller.opacity!.value,
            child: const MessageBox3(),
          ),
        ],
      ),
    );
  }
}

class _OnBoardingMessage3Controller extends GetxController {
  RxDouble? opacity = 0.0.obs;

  @override
  void onInit() {
    Future.delayed(const Duration(milliseconds: 7000), _setSecondValues);
    super.onInit();
  }

  void _setSecondValues() {
    opacity!.value = 1;
  }
}

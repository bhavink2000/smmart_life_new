import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../on_boarding_constants.dart';
import 'message_box.dart';

class OnboardingMessage2 extends StatelessWidget {
  const OnboardingMessage2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height,
      child: _OnboardingMessage2Animation(),
    );
  }
}

class _OnboardingMessage2Animation extends StatelessWidget {
  _OnboardingMessage2Animation();
  final controller = Get.put(_OnBoardingMessage2Controller());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedPadding(
            duration: kAnimationDuration,
            padding: controller.edgeInsets!.value,
            curve: Curves.fastLinearToSlowEaseIn,
            child: AnimatedOpacity(
              duration: kAnimationDuration,
              opacity: controller.opacity!.value,
              onEnd: controller.setThirdValues,
              child: const MessageBox2(),
            ),
          ),
        ],
      ),
    );
  }
}

class _OnBoardingMessage2Controller extends GetxController {
  RxDouble? opacity = 0.0.obs;

  Rx<EdgeInsets>? edgeInsets = EdgeInsets.only(bottom: Get.height * 0.0).obs;

  @override
  void onInit() {
    Future.delayed(const Duration(milliseconds: 1200), _setSecondValues);
    super.onInit();
  }

  void _setSecondValues() {
    opacity!.value = 1;
  }

  void setThirdValues() {
    opacity!.value = 0;
    edgeInsets!.value = EdgeInsets.only(bottom: Get.height * 0.27);
  }
}

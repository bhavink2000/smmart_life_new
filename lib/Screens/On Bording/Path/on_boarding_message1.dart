import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../on_boarding_constants.dart';
import 'message_box.dart';

class OnboardingMessage1 extends StatelessWidget {
  const OnboardingMessage1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height,
      child: _OnboardingMessage1Animation(),
    );
  }
}

class _OnboardingMessage1Animation extends StatelessWidget {
  _OnboardingMessage1Animation();
  final controller = Get.put(_OnBoardingMessageController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedPadding(
            duration: kAnimationDuration,
            curve: Curves.fastLinearToSlowEaseIn,
            padding: controller.edgeInsets!.value,
            child: AnimatedOpacity(
              duration: kAnimationDuration,
              opacity: controller.opacity!.value,
              child: const MessageBox1(),
            ),
          ),
        ],
      ),
    );
  }
}

class _OnBoardingMessageController extends GetxController {
  RxDouble? opacity = 1.0.obs;

  Rx<EdgeInsets>? edgeInsets = EdgeInsets.only(bottom: Get.height * 0.27).obs;

  @override
  void onInit() {
    Future.delayed(const Duration(milliseconds: 1000), _setSecondValue);
    super.onInit();
  }

  void _setSecondValue() {
    opacity!.value = 0;
    edgeInsets!.value = EdgeInsets.only(bottom: Get.height * 0.27);
  }
}

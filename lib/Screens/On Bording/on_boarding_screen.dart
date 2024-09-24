import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../App Helper/color_helper.dart';
import 'Path/background_color.dart';
import 'Path/group_2311.dart';
import 'Path/group_2379.dart';
import 'Path/on_boarding_message1.dart';
import 'Path/on_boarding_message2.dart';
import 'Path/on_boarding_message3.dart';
import 'Path/path_115.dart';
import 'Path/path_116.dart';
import 'Path/path_117.dart';
import 'Path/path_119.dart';
import 'Path/path_186.dart';
import 'Path/path_187.dart';
import 'Path/path_188.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final box = GetStorage();
    box.write('isAppOpenedBefore', 'yes');
    return Scaffold(
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: const Stack(
          // fit: StackFit.expand,
          fit: StackFit.loose,
          children: [
            BackgroundColor(),
            Path115(),
            Path119(),
            Group2311(),
            Path186(),
            Path116(),
            Path117(),
            Path187(),
            Path188(),
            Group2379(),
            OnboardingMessage1(),
            OnboardingMessage2(),
            OnboardingMessage3(),
            // SplashScreenGestureDetector()
          ],
        ),
      ),
    );
  }
}

class BeforeOnBoarding extends StatefulWidget {
  const BeforeOnBoarding({super.key});

  @override
  State<BeforeOnBoarding> createState() => _BeforeOnBoardingState();
}

class _BeforeOnBoardingState extends State<BeforeOnBoarding> {

  @override
  void initState() {
    Timer(const Duration(milliseconds: 100), () {
      Get.off(() => const OnBoardingScreen(),
          transition: Transition.noTransition);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorHelper.berylGreen,
    );
  }
}


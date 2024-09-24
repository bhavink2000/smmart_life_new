import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/App%20Helper/color_helper.dart';
import '../../App Helper/asset_helper.dart';
import '../Authentication/Login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(milliseconds: 3000),
      () {
        Get.off(() => LoginScreen(), transition: Transition.fade);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
     /// end time error
    return Scaffold(
      backgroundColor: ColorHelper.lightBrown,
      body: Center(
        child: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: [
              Positioned(
                left: Get.width / 3.9,
                child: AnimationLimiter(
                  child: AnimationConfiguration.staggeredList(
                    position: 1,
                    duration: const Duration(seconds: 2),
                    child: SlideAnimation(
                      horizontalOffset: 50,
                      // curve: Curves.elasticInOut,
                      child: FadeInAnimation(
                        child: Image(
                          image: AssetHelper.smmartWord,
                          height: 100,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: Get.width / 1.9,
                child: AnimationLimiter(
                    child: AnimationConfiguration.staggeredList(
                  position: 2,
                  delay: const Duration(seconds: 1),
                  duration: const Duration(seconds: 2),
                  child: SlideAnimation(
                    horizontalOffset: 50,
                    curve: Curves.elasticOut,
                    child: FadeInAnimation(
                      child: Image(
                        image: AssetHelper.lifeWord,
                        height: 100,
                      ),
                    ),
                  ),
                )),
              )
              //   Image(image: AssetHelper.smmartWord,height: 100,),
              //   Image(image: AssetHelper.lifeWord,height: 100,),
            ],
          ),
        ),
      ),
    );

    /// now working
    /*return Scaffold(
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Image.asset('assets/images/smmartlife_gif1.gif',
            fit: BoxFit.fitHeight),
      ),
    );*/
  }
}

class BeforeSplashScreen extends StatefulWidget {
  const BeforeSplashScreen({super.key});

  @override
  State<BeforeSplashScreen> createState() => _BeforeSplashScreenState();
}

class _BeforeSplashScreenState extends State<BeforeSplashScreen> {
  @override
  void initState() {
    super.initState();
    // Future.delayed(Duration.zero,() => Get.off(()=> SplashScreen(),transition: Transition.noTransition),);
    Timer(
      const Duration(milliseconds: 100),
      () {
        Get.off(() => const SplashScreen(),
            transition: Transition.noTransition);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorHelper.lightBrown,
    );
  }
}

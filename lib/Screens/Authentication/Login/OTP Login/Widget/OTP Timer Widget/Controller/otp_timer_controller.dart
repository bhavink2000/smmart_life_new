import 'package:get/get.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';

class OTPTimerController extends GetxController {
  CountdownTimerController? countdownTimerController ;

  @override
  void onInit() {
    super.onInit();
    countdownTimerController = CountdownTimerController(
        endTime: DateTime.now().millisecondsSinceEpoch + 1000 * 30,
        onEnd: () {
          // Get.back();
        });
  }
}
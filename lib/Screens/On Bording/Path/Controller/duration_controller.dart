import 'package:get/get.dart';

class DurationController extends GetxController {
  Rx<Duration> duration = const Duration(seconds: 2).obs;

  changeDuration() {
    duration = Duration(seconds: duration.value.inSeconds - 1) as Rx<Duration>;
    update();
  }
}

import 'package:get/get.dart';
import 'package:smmart_life_new/App%20Helper/Loading%20Helper/Loading/green_loading.dart';
import 'package:smmart_life_new/App%20Helper/Loading%20Helper/Loading/red_loading.dart';

class LoadingHelper {

  static void redLoading() {
    Get.dialog(
      const RedLoading(),
      barrierDismissible: false
    );
  }

  static void greenLoading() {
    Get.dialog(
      const GreenLoading(),
      barrierDismissible: false
    );
  }

  static onLoadingExit() {
    Get.back();
  }

}
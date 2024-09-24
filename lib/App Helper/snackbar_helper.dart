import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'color_helper.dart';

class SnackBarHelper {
  static getWarningMsg(String warningMsg) {
    return Get.rawSnackbar(
        message: warningMsg,
        backgroundColor: ColorHelper.grenadier,
        snackPosition: SnackPosition.TOP,
        duration: const Duration(seconds: 2),
        borderRadius: 5,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        icon: const Icon(
          Icons.warning_amber_rounded,
          color: Colors.white,
        ));
  }

  static getSuccessMsg(String successMsg) {
    return Get.rawSnackbar(
        message: successMsg,
        backgroundColor: ColorHelper.brown,
        snackPosition: SnackPosition.TOP,
        duration: const Duration(seconds: 2),
        borderRadius: 5,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        icon: const Icon(
          Icons.done_all_rounded,
          color: Colors.white,
        ));
  }
}

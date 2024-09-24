import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {

  final languageController = TextEditingController() ;
  final passwordController = TextEditingController() ;
  final locationController = TextEditingController() ;
  final receiveNotificationController = TextEditingController() ;

  RxBool isNotificationEnabled = false.obs ;

  @override
  void onInit() {
    super.onInit();
    languageController.text = 'ENGLISH' ;
    passwordController.text = 'ENGLISH' ;
    locationController.text = 'Ahmedabad, India' ;
    // isNotificationEnabled.value ? receiveNotificationController.text = 'Enabled' : receiveNotificationController.text = 'Disabled' ;
  }

  changeNotificationValue(value) {
    isNotificationEnabled.value = value ;
  }
}
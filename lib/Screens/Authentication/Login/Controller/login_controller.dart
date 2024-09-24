import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../App Helper/Check Internet Helper/Bindings/dependency_injection.dart';

class LoginController extends GetxController {
  @override
  void onInit() {
    CheckNetworkDependencyInjection.init();
    userNameController.text = 'demo';
    passwordController.text = 'demo';
    super.onInit();
  }

  RxBool isSecured = true.obs;

  void passToggle() => isSecured.value = !isSecured.value;

  RxBool isRemembered = false.obs;

  checkToggle(newVal) => isRemembered.value = newVal;

  RxInt tabIndex = 0.obs;

  void functionTab1() {
    tabIndex.value = 0;
  }

  void functionTab2() {
    tabIndex.value = 1;
  }

  final userNameController = TextEditingController();

  final passwordController = TextEditingController();

  final sponsorController = TextEditingController();

  final mobileNumberController = TextEditingController();
}

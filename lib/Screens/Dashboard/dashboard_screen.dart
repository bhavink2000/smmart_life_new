import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Widget/dashboard_custom_bottom_nav_bar.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Widget/exit_alertbox.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});
  final controller = Get.put(BottomNavBarController());

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (val) {
        if(controller.index.value == 2){
          controller.index.value = 0 ;
        } else {
        Get.dialog(const ExitAlertbox(), barrierDismissible: false);
        }
      },
      child: Scaffold(
        body: Obx(() => controller.screens[controller.index.value]),
        bottomNavigationBar: Obx(() => controller.index.value == 2
            ? Container(
                height: 0,
              )
            : dashboardBottomNavBar()),
      ),
    );
  }
}

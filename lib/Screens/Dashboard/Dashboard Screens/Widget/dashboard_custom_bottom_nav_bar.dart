import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Categories%20Screen/dashboard_categories_screen.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Home/dashboard_home_screen.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Setting/dashboard_setting_screen.dart';
import '../../../../App Helper/color_helper.dart';
import '../Dashboard Cart/dashboard_cart_screen.dart';

dashboardBottomNavBar() {
  final controller = Get.put(BottomNavBarController());
  const double buttonHeight = 50;
  double buttonWidth = Get.width / 4;
  // const double buttonWidth = 95 ;
  return Container(
    height: 50,
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
            top: BorderSide(color: ColorHelper.silver.withOpacity(0.5)))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Material(
          color: Colors.white,
          child: InkWell(
              onTap: () {
                controller.index.value = 0;
                log('index ==> ${controller.index.value}');
              },
              child: SizedBox(
                // color: Colors.red,
                height: buttonHeight,
                width: buttonWidth,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImageIcon(
                        controller.index.value == 0
                            ? const AssetImage(
                                'assets/images/bottom/home (1).png')
                            : const AssetImage(
                                'assets/images/bottom/home_outlined.png'),
                        size: 20,
                        color: controller.index.value == 0
                            ? ColorHelper.grenadier
                            : Colors.black),
                    Text(
                      'Home',
                      style: TextStyle(
                          fontSize: 10,
                          color: controller.index.value == 0
                              ? ColorHelper.grenadier
                              : Colors.black),
                    )
                  ],
                ),
              )),
        ),
        Material(
          color: Colors.white,
          child: InkWell(
              onTap: () {
                controller.index.value = 1;
                log('index ==> ${controller.index.value}');
              },
              child: SizedBox(
                // color: Colors.red,
                height: buttonHeight,
                width: buttonWidth,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImageIcon(
                        controller.index.value == 1
                            ? const AssetImage(
                            'assets/images/grid.png')
                            : const AssetImage(
                            'assets/images/grid-outline.png'),
                        size: 20,
                        color: controller.index.value == 1
                            ? ColorHelper.brown
                            : Colors.black),
                    Text(
                      'Categories',
                      style: TextStyle(
                          fontSize: 10,
                          color: controller.index.value == 1
                              ? ColorHelper.brown
                              : Colors.black),
                    )
                  ],
                ),
              ),
          ),
        ),
        Material(
          color: Colors.white,
          child: InkWell(
            onTap: () {
              controller.index.value = 2;
              log('index ==> ${controller.index.value}');
            },
            child: SizedBox(
              // color: Colors.red,
              height: buttonHeight,
              width: buttonWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(
                      controller.index.value == 2
                          ? const AssetImage(
                              'assets/images/bottom/shopping-cart.png')
                          : const AssetImage(
                              'assets/images/bottom/shopping-cart_outlined.png'),
                      size: 20,
                      color: controller.index.value == 2
                          ? ColorHelper.brown
                          : Colors.black),
                  const Text(
                    'Cart',
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
          ),
        ),
        // InkWell(
        //   onTap: () {
        //     controller.index.value = 3;
        //     log('index ==> ${controller.index.value}');
        //   },
        //   child: SizedBox(
        //     // color: Colors.red,
        //     height: buttonHeight,
        //     width: buttonWidth,
        //     // padding: EdgeInsets.only(top: 10,left: 10,right: 10),
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         ImageIcon(
        //             controller.index.value == 3
        //                 ? const AssetImage('assets/images/bottom/bookmark.png')
        //                 : const AssetImage(
        //                     'assets/images/bottom/bookmark_outlined.png'),
        //             size: 20,
        //             color: controller.index.value == 3
        //                 ? ColorHelper.Grenadier
        //                 : Colors.black),
        //         Text(
        //           'Wishlist',
        //           style: TextStyle(
        //               fontSize: 10,
        //               color: controller.index.value == 3
        //                   ? ColorHelper.Grenadier
        //                   : Colors.black),
        //         )
        //       ],
        //     ),
        //   ),
        // ),
        Material(
          color: Colors.white,
          child: InkWell(
            onTap: () {
              controller.index.value = 3;
              log('index ==> ${controller.index.value}');
            },
            child: SizedBox(
              // color: Colors.red,
              height: buttonHeight,
              width: buttonWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(
                      controller.index.value == 3
                          ? const AssetImage(
                              'assets/images/bottom/profile_active_1.png')
                          : const AssetImage('assets/images/bottom/profile.png'),
                      size: 20,
                      color: controller.index.value == 3
                          ? ColorHelper.brown
                          : Colors.black),
                  Text(
                    'Account',
                    style: TextStyle(
                        fontSize: 10,
                        color: controller.index.value == 3
                            ? ColorHelper.brown
                            : Colors.black),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

class BottomNavBarController extends GetxController {
  RxInt index = 0.obs;

  List screens = [
    DashboardHomeScreen(),
    const DashboardCategoriesScreen(),
    const DashboardCartScreen(),
    // const DashboardFavoritesScreen(),
    const DashboardSettingScreen()
  ];
}

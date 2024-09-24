import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Setting/Controller/settings_controller.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Setting/Inside%20Screens/My%20Address/settings_my_address_screen.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Setting/Inside%20Screens/Update%20Profile/update_profile_screen.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Setting/Inside%20Screens/Vouchers/vouchers_screen.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Setting/Widget/dash_setting_appbar.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../App Helper/color_helper.dart';
import '../../../../App Helper/font_helper.dart';
import '../../Order History/order_history_screen.dart';
import '../Dashboard Home/Widget/dash_home_pv_grid.dart';
import 'Inside Screens/Settings/Widget/change_password_alertbox.dart';
import 'Widget/dash_setting_name_row.dart';
import 'Widget/log_out_alertbox.dart';

class DashboardSettingScreen extends StatelessWidget {
  const DashboardSettingScreen({super.key});

  makeCall() async {
    var num = Uri.parse("tel:0000000000");
    if (await canLaunchUrl(num)) {
      await launchUrl(num);
    } else {
      throw 'something went wrong';
    }
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SettingsController());
    return Scaffold(
      appBar: dashSettingAppBar(),
      backgroundColor: ColorHelper.lightGrey.withOpacity(0.5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 160,
              width: Get.width,
              color: Colors.red,
              child: Stack(
                children: [
                  Container(
                    width: Get.width,
                    height: 80,
                    color: ColorHelper.lightBrown,
                    alignment: Alignment.center,
                  ),
                  Positioned(
                    top: 10,
                    left: Get.width / 3.3,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Robert Downy Jr.',
                          style: TextStyle(
                              fontFamily: FontHelper.segoeuiRegular,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Platinum star',
                          style: TextStyle(
                              fontFamily: FontHelper.segoeuiRegular,
                              fontSize: 17),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: Get.width,
                      height: 80,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    right: 20,
                    bottom: 20,
                    child: InkWell(
                      onTap: () {
                        Get.dialog(const LogoutAlertbox(),
                            barrierDismissible: false);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: ColorHelper.grenadier,
                            borderRadius: BorderRadius.circular(5)),
                        height: 40,
                        width: Get.width / 1.6,
                        alignment: Alignment.center,
                        child: const Text(
                          'LOGOUT',
                          style: TextStyle(
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: FontHelper.segoeuiRegular),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    left: 15,
                    child: Stack(
                      children: [
                        Obx(
                          () => Container(
                            // radius: 50,
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                // color: Colors.red,
                                borderRadius: BorderRadius.circular(50)),
                            child: controller.profilePicturePicked.value
                                ? ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.file(
                                        controller.profilePicture!.value,
                                        fit: BoxFit.cover),
                                  )
                                // : Image.asset(
                                //     'assets/images/Dashboard/userPhoto.png'),
                                : CircleAvatar(
                                    child: Icon(
                                      Icons.person,
                                      size: 60,
                                      color: ColorHelper.black,
                                    ),
                                    backgroundColor: ColorHelper.lightGrey),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: InkWell(
                            onTap: () {
                              controller.pickProfilePicture();
                            },
                            borderRadius: BorderRadius.circular(15),
                            radius: 30,
                            child: const CircleAvatar(
                              backgroundColor: ColorHelper.brown,
                              radius: 15,
                              child: ImageIcon(
                                  AssetImage(
                                      'assets/images/Dashboard/camera.png'),
                                  color: Colors.white,
                                  size: 18),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 10, bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: ColorHelper.lightBrown,
                    borderRadius: BorderRadius.circular(5)),
                child: const Column(
                  children: [
                    DashHomeBVTile(
                      label: 'My BV',
                      value: '33,000',
                    ),
                    DashHomeBVTile(
                      label: 'Group BV',
                      value: '53,000',
                    ),
                    DashHomeBVTile(
                      label: 'My Network',
                      value: '09',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              // padding: const EdgeInsets.only(left: 10, right: 10),
              color: Colors.white,
              child: Column(
                children: [
                  Material(
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {
                        Get.to(() => const OrderHistoryScreen());
                      },
                      child: const ListTile(
                        contentPadding: EdgeInsets.only(left: 20, right: 10),
                        leading: ImageIcon(
                            AssetImage('assets/images/Dashboard/cart.png')),
                        title: Text(
                          'Orders',
                          style:
                              TextStyle(fontFamily: FontHelper.segoeuiRegular),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 14,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  Material(
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {},
                      child: const ListTile(
                        contentPadding: EdgeInsets.only(left: 20, right: 10),
                        leading: ImageIcon(
                            AssetImage('assets/images/Dashboard/users.png')),
                        title: Text('CRM',
                            style: TextStyle(
                                fontFamily: FontHelper.segoeuiRegular)),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.only(bottom: 10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  DashSettingNameRow(
                      name: 'Update Profile',
                      onTap: () {
                        Get.to(() => UpdateProfileScreen());
                      }),
                  DashSettingNameRow(
                      name: 'My Address',
                      onTap: () {
                        Get.to(() => const SettingsMyAddressScreen());
                      }),
                  DashSettingNameRow(
                      name: 'Vouchers',
                      onTap: () {
                        Get.to(() => const MyVouchersScreen());
                      }),
                  DashSettingNameRow(
                      name: 'Change Password',
                      onTap: () {
                        changePasswordAlertBox();
                      }),
                  DashSettingNameRow(
                      name: 'Help Desk',
                      onTap: () {
                        makeCall();
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

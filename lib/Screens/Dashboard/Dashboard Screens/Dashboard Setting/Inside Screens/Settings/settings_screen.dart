import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Setting/Inside%20Screens/My%20Address/Add%20New%20Address%20Screen/Widget/add_address_text_field.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Setting/Inside%20Screens/Settings/Controller/settings_controller.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Setting/Inside%20Screens/Settings/Widget/change_password_alertbox.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Setting/Inside%20Screens/Settings/Widget/settings_appbar.dart';

import '../../../../../../App Helper/color_helper.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({super.key});
  final controller = Get.put(SettingsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: settingsAppbar(),
      body: Container(
        width: Get.width,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(
                label: 'LANGUAGE',
                change: true,
                isReadOnly: true,
                onTapChange: () {log('change language');},
                controller: controller.languageController,
              ),
              const SizedBox(height: 10,),
              CustomTextField(
                label: 'PASSWORD',
                change: true,
                onTapChange: () {
                  changePasswordAlertBox();
                },
                isSecured: true,
                isReadOnly: true,
                controller: controller.passwordController,
              ),
              const SizedBox(height: 10,),
              CustomTextField(
                label: 'Location',
                isReadOnly: true,
                edit: true,
                onTapEdit: (){log('edit');},
                controller: controller.locationController,
              ),
              const SizedBox(height: 10),
              Obx(
                ()=> CustomTextField(
                  label: 'RECEIVE NOTIFICATIONS',
                  controller: controller.receiveNotificationController,
                  hint: controller.isNotificationEnabled.value ? 'Enabled' : 'Disabled',
                  isReadOnly: true,
                  isSpaceBetnLblHint: true,
                  suffix: Switch(
                    value: controller.isNotificationEnabled.value,
                    onChanged: (value) => controller.changeNotificationValue(value),
                    activeColor: Colors.white,
                    activeTrackColor: ColorHelper.brown,
                    inactiveThumbColor: Colors.white,
                    inactiveTrackColor: ColorHelper.silver.withOpacity(0.5),
                    trackOutlineWidth: MaterialStateProperty.all(0),
                    trackOutlineColor: MaterialStateProperty.all(ColorHelper.silver),
                  ),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:developer';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Setting/Inside%20Screens/My%20Address/Add%20New%20Address%20Screen/Controller/add_new_address_controller.dart';

import '../../../../../../../../App Helper/color_helper.dart';

class AddAddressSelectState extends StatelessWidget {
  AddAddressSelectState({super.key});
  final controller = Get.put(AddNewAddressController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.symmetric(vertical: 5),
      // decoration: BoxDecoration(
      //     border: Border(bottom: BorderSide(color: ColorHelper.Silver))),
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
          // alignedDropdown: true,
            child: Obx(
                  ()=> DropdownButton2(
                    // dropdownColor: ColorHelper.lightBrown,
                    // borderRadius: BorderRadius.circular(10),
                    buttonStyleData: ButtonStyleData(
                      width: Get.width,
                    ),
                    dropdownStyleData: DropdownStyleData(
                        padding: EdgeInsets.zero,
                        maxHeight: 250,
                        decoration: BoxDecoration(
                            color: ColorHelper.lightBrown,
                            borderRadius: BorderRadius.circular(5)),
                        scrollbarTheme: const ScrollbarThemeData(
                            radius: Radius.circular(50),
                            thumbColor: MaterialStatePropertyAll(ColorHelper.brown))),
                hint: const Text(
                  'Select State',
                ),
                onChanged: (newValue) {
                  controller.state.value = newValue! ;
                  log('<><><><><>>><>>><><><><><>$newValue');
                },
                value: controller.state.value == ''
                    ? null
                    : controller.state.value,
                items: controller.stateList.map((item) {
                  return DropdownMenuItem(
                    value: item.toString(),
                    child: Text(
                      item.toString(),
                      style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w400),
                    ),
                  );
                }).toList(),
              ),
            )),
      ),
    );
  }
}

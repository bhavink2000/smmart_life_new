import 'dart:developer';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Setting/Inside%20Screens/My%20Address/Add%20New%20Address%20Screen/Controller/add_new_address_controller.dart';
import '../../../../../../../../App Helper/color_helper.dart';

class AddAddressSelectCity extends StatelessWidget {
  AddAddressSelectCity({super.key});
  final controller = Get.put(AddNewAddressController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.symmetric(vertical: 0),
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
                  'Select City',
                ),
                onChanged: (newValue) {
                  controller.city.value = newValue! ;
                  log('<><><><><>>><>>><><><><><>$newValue');
                },
                value: controller.city.value == ''
                    ? null
                    : controller.city.value,
                items: controller.cityList.map((city) {
                  return DropdownMenuItem(
                    value: city.toString(),
                    child: Text(
                      city.toString(),
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

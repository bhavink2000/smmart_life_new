import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Screens/Authentication/Register/Personal%20Information/Controller/personal_information_controller.dart';
import '../../../../../App Helper/color_helper.dart';

class SelectCityDropdown extends StatelessWidget {
  SelectCityDropdown({super.key});
  final controller = Get.put(PersonalInformationController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: ColorHelper.silver))),
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
            child: Obx(
          () => DropdownButton2(
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
              controller.city.value = newValue!;
            },
            value: controller.city.value == '' ? null : controller.city.value,
            items: controller.cityList.map((city) {
              return DropdownMenuItem(
                value: city.toString(),
                child: Text(
                  city.toString(),
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
              );
            }).toList(),
          ),
        )),
      ),
    );
  }
}

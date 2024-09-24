import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Screens/Authentication/Register/Nominee%20Info%20&%20KYC/Controller/nominee_kyc_controller.dart';
import '../../../../../App Helper/color_helper.dart';

class RelationTypeDropdown extends StatelessWidget {
  RelationTypeDropdown({super.key});
  final controller = Get.put(NomineeAndKycController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: ColorHelper.silver))),
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
            // alignedDropdown: true,
            child: Obx(
              ()=> DropdownButton2(
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
                  'Relation with Applicant',
                ),
                onChanged: (newValue) {
                  controller.relation.value = newValue! ;
                },
                value: controller.relation.value == ''
                    ? null
                    : controller.relation.value,
                items: controller.relationTypes.map((item) {
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

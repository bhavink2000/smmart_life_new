import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../App Helper/color_helper.dart';
import '../Controller/nominee_kyc_controller.dart';

class SelectIdTypeDropdown extends StatelessWidget {
  SelectIdTypeDropdown({super.key});
  final controller = Get.put(NomineeAndKycController());
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
                'Select ID Proof Type',
              ),
              onChanged: (newValue) {
                // _villageController.setSelectedVillage(newValue!) ;
                controller.selectId.value = newValue!;
              },
              value: controller.selectId.value == ''
                  ? null
                  : controller.selectId.value,
              items: controller.idProofTypes.map((item) {
                return DropdownMenuItem(
                  value: item.toString(),
                  child: Text(
                    item.toString(),
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}

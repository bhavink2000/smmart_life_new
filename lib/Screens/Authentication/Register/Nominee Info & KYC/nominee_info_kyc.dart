import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/App%20Helper/common_image_picker_helper.dart';
import 'package:smmart_life_new/Screens/Authentication/Register/Nominee%20Info%20&%20KYC/Controller/nominee_kyc_controller.dart';
import 'package:smmart_life_new/Screens/Authentication/Register/Nominee%20Info%20&%20KYC/Widget/nominee_kyc_appbar.dart';
import 'package:smmart_life_new/Screens/Authentication/Register/Nominee%20Info%20&%20KYC/Widget/relation_type_dropdown.dart';
import 'package:smmart_life_new/Screens/Authentication/Register/Widget/user_added_success_screen.dart';
import '../../../../App Helper/color_helper.dart';
import '../../../../App Helper/font_helper.dart';
import '../Widget/register_text_field.dart';
import 'Widget/select_id_type.dart';

class NomineeAndKycScreen extends StatelessWidget {
  NomineeAndKycScreen({super.key});
  final controller = Get.put(NomineeAndKycController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: nomineeAndKycAppbar(),
      body: Container(
        height: double.infinity,
        width: Get.width,
        color: Colors.white,
        padding: const EdgeInsets.only(left: 20, bottom: 10, right: 20),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              RegisterTextField(
                controller: controller.nomineeNameController,
                label: 'Nominee Name',
                isRequiredField: true,
              ),
              const SizedBox(height: 10),
              RegisterTextField(
                controller: controller.nomineeAgeController,
                label: 'Nominee Age',
                isRequiredField: true,
              ),
              const SizedBox(height: 10),
              RelationTypeDropdown(),
              const SizedBox(height: 10),
              RegisterTextField(
                controller: controller.gstNoController,
                label: 'GST No.',
              ),
              const SizedBox(height: 10),
              RegisterTextField(
                controller: controller.panNoController,
                label: 'PAN No.',
              ),
              const SizedBox(height: 10),
              CommonFilePickerTile(label: 'PAN CARD', file: controller.panFile),
              SelectIdTypeDropdown(),
              const SizedBox(height: 10),
              CommonFilePickerTile(
                  label: 'Select ID Proof', file: controller.idProofFile),
              const SizedBox(height: 10),
              CommonFilePickerTile(
                  label: 'Cheque(canceled)', file: controller.chequeFile),
              const SizedBox(height: 10),
              Row(
                children: [
                  Obx(
                    () => Checkbox(
                      value: controller.termsAndCondition.value,
                      onChanged: (newVal) async {
                        await controller.checkToggle(newVal);
                        log('$newVal');
                      },
                      activeColor: ColorHelper.brown,
                    ),
                  ),
                  const Text('Agree Terms & Condition')
                ],
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    Get.to(() => const UserAddedSuccessScreen(),
                        transition: Transition.rightToLeftWithFade,
                        duration: const Duration(milliseconds: 500));
                  },
                  child: Container(
                    width: 100,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: ColorHelper.brown,
                        borderRadius: BorderRadius.circular(30)),
                    child: const Text(
                      'SUBMIT',
                      style: TextStyle(
                          fontFamily: FontHelper.avenirMedium,
                          letterSpacing: 1,
                          color: Colors.white),
                    ),
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

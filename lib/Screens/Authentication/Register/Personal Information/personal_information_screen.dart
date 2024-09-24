import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Screens/Authentication/Register/Identification%20&%20Banking%20Info/identification_banking_info.dart';
import 'package:smmart_life_new/Screens/Authentication/Register/Personal%20Information/Controller/personal_information_controller.dart';
import 'package:smmart_life_new/Screens/Authentication/Register/Personal%20Information/Widget/personal_info_select_state.dart';
import 'package:smmart_life_new/Screens/Authentication/Register/Personal%20Information/Widget/personal_information_appbar.dart';
import 'package:smmart_life_new/Screens/Authentication/Register/Personal%20Information/Widget/prsonal_info_select_city.dart';
import 'package:smmart_life_new/Screens/Authentication/Register/Widget/register_text_field.dart';
import '../../../../../App Helper/color_helper.dart';
import '../../../../../App Helper/font_helper.dart';

class PersonalInformationScreen extends StatelessWidget {
  PersonalInformationScreen({super.key});
  final controller = Get.put(PersonalInformationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: personalInformationAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 10),
              RegisterTextField(
                controller: controller.firstNameController,
                label: 'First Name',
                isRequiredField: true,
              ),
              const SizedBox(height: 10),
              RegisterTextField(
                controller: controller.middleNameController,
                label: 'Middle Name',
              ),
              const SizedBox(height: 10),
              RegisterTextField(
                controller: controller.lastNameController,
                label: 'Last Name',
                isRequiredField: true,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                        text: 'Gender',
                        style: TextStyle(color: Colors.black, fontSize: 16)),
                    TextSpan(text: '*', style: TextStyle(color: Colors.red))
                  ])),
                  Flexible(
                    child: Obx(
                      () => ListTileTheme(
                        horizontalTitleGap: 5,
                        child: RadioListTile(
                          contentPadding: const EdgeInsets.all(0),
                          title: const Text(
                            'Male',
                            style: TextStyle(
                                color: ColorHelper.black,
                                fontFamily: FontHelper.avenirMedium,
                                fontSize: 14),
                          ),
                          value: 'Male',
                          onChanged: (val) {
                            controller.gender.value = val.toString();
                            log(controller.gender.value);
                          },
                          groupValue: controller.gender.value,
                          activeColor: ColorHelper.brown,
                          visualDensity: const VisualDensity(
                              horizontal: VisualDensity.minimumDensity,
                              vertical: VisualDensity.minimumDensity),
                          dense: true,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Obx(
                      () => ListTileTheme(
                        horizontalTitleGap: 5,
                        child: RadioListTile(
                          contentPadding: const EdgeInsets.all(0),
                          title: const Text(
                            'Female',
                            style: TextStyle(
                                color: ColorHelper.black,
                                fontFamily: FontHelper.avenirMedium,
                                fontSize: 14),
                          ),
                          value: 'Female',
                          onChanged: (val) {
                            controller.gender.value = val.toString();
                            log(controller.gender.value);
                          },
                          groupValue: controller.gender.value,
                          activeColor: ColorHelper.brown,
                          visualDensity: const VisualDensity(
                              horizontal: VisualDensity.minimumDensity,
                              vertical: VisualDensity.minimumDensity),
                          dense: true,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Obx(
                      () => ListTileTheme(
                        horizontalTitleGap: 5,
                        child: RadioListTile(
                          contentPadding: const EdgeInsets.all(0),
                          title: const Text(
                            'Other',
                            style: TextStyle(
                                color: ColorHelper.black,
                                fontFamily: FontHelper.avenirMedium,
                                fontSize: 14),
                          ),
                          value: 'Other',
                          onChanged: (val) {
                            controller.gender.value = val.toString();
                            log(controller.gender.value);
                          },
                          groupValue: controller.gender.value,
                          activeColor: ColorHelper.brown,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          visualDensity: const VisualDensity(
                              horizontal: VisualDensity.minimumDensity,
                              vertical: VisualDensity.minimumDensity),
                          dense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(color: ColorHelper.silver),
              RegisterTextField(
                controller: controller.dobController,
                label: 'Date of Birth',
                isRequiredField: true,
              ),
              const SizedBox(height: 10),
              RegisterTextField(
                controller: controller.addressController,
                label: 'Address',
                isRequiredField: true,
              ),
              const SizedBox(height: 10),
              SelectStateDropdown(),
              const SizedBox(height: 10),
              SelectCityDropdown(),
              const SizedBox(height: 10),
              RegisterTextField(
                  label: 'Postal Code',
                  isRequiredField: true,
                  controller: controller.postalCodeController),
              const SizedBox(height: 10),
              RegisterTextField(
                  label: 'Email ID',
                  isRequiredField: true,
                  controller: controller.emailController),
              const SizedBox(height: 10),
              RegisterTextField(
                  label: 'Mobile',
                  isRequiredField: true,
                  controller: controller.mobileController),
              const SizedBox(height: 40),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    Get.to(() => IdentificationAndBankingInfoScreen(),
                        transition: Transition.rightToLeftWithFade,
                        duration: const Duration(milliseconds: 500));
                  },
                  child: Container(
                    width: 100,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: ColorHelper.brown,
                        borderRadius: BorderRadius.circular(30)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'NEXT',
                          style: TextStyle(
                              fontFamily: FontHelper.avenirMedium,
                              letterSpacing: 1,
                              color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                          size: 18,
                        )
                      ],
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

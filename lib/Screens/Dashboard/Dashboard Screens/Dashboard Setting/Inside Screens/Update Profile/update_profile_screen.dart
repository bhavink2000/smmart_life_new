import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Setting/Inside%20Screens/Update%20Profile/Controller/update_profile_controller.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Setting/Inside%20Screens/Update%20Profile/Widget/update_profile_appbar.dart';
import '../../../../../../App Helper/color_helper.dart';
import '../../../../../../App Helper/common_image_picker_helper.dart';
import '../../../../../../App Helper/font_helper.dart';
import '../../../../../Authentication/Register/Nominee Info & KYC/Widget/relation_type_dropdown.dart';
import '../../../../../Authentication/Register/Nominee Info & KYC/Widget/select_id_type.dart';
import '../../../../../Authentication/Register/Personal Information/Widget/personal_info_select_state.dart';
import '../../../../../Authentication/Register/Personal Information/Widget/prsonal_info_select_city.dart';
import '../../../../../Authentication/Register/Widget/register_text_field.dart';

class UpdateProfileScreen extends StatelessWidget {
  UpdateProfileScreen({super.key});
  final controller = Get.put(UpdateProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: updateProfileAppbar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
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
                  const Text(
                    'Gender*',
                    style: TextStyle(
                        fontSize: 16, fontFamily: FontHelper.avenirMedium),
                  ),
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
              const Divider(),
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
              const SizedBox(height: 10),
              RegisterTextField(
                controller: controller.bankNameController,
                label: 'Bank Name',
              ),
              const SizedBox(height: 10),
              const RegisterTextField(
                // controller: controller.middleNameController,
                label: 'Account Type',
              ),
              const SizedBox(height: 10),
              RegisterTextField(
                controller: controller.accountHolderNameController,
                label: 'Account Holder Name',
              ),
              const SizedBox(height: 10),
              RegisterTextField(
                controller: controller.bankACNoController,
                label: 'Bank A/C No.',
              ),
              const SizedBox(height: 10),
              RegisterTextField(
                controller: controller.branchNameAndAddressController,
                label: 'Branch Name & Address',
              ),
              const SizedBox(height: 10),
              RegisterTextField(
                controller: controller.iFSCNoController,
                label: 'IFSC No.',
              ),
              const SizedBox(height: 10),
              RegisterTextField(
                controller: controller.branchCityController,
                label: 'Branch City',
              ),
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
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 100,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: ColorHelper.brown,
                        borderRadius: BorderRadius.circular(30)),
                    child: const Text(
                      'SAVE',
                      style: TextStyle(
                          fontFamily: FontHelper.avenirMedium,
                          letterSpacing: 1,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

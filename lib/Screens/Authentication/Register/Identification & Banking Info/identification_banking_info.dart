import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Screens/Authentication/Register/Identification%20&%20Banking%20Info/Controller/identification_banking_controller.dart';
import 'package:smmart_life_new/Screens/Authentication/Register/Nominee%20Info%20&%20KYC/nominee_info_kyc.dart';
import '../../../../App Helper/color_helper.dart';
import '../../../../App Helper/font_helper.dart';
import '../Widget/register_text_field.dart';
import 'Widget/identification_banking_appbar.dart';

class IdentificationAndBankingInfoScreen extends StatelessWidget {
  IdentificationAndBankingInfoScreen({super.key});
  final controller = Get.put(IdentificationBankingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: identificationBankingAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              RegisterTextField(
                controller: controller.bankNameController,
                label: 'Bank Name',
              ),
              const SizedBox(
                height: 10,
              ),
              const RegisterTextField(
                label: 'Account Type',
              ),
              const SizedBox(
                height: 10,
              ),
              RegisterTextField(
                controller: controller.accountHolderNameController,
                label: 'Account Holder Name',
              ),
              const SizedBox(
                height: 10,
              ),
              RegisterTextField(
                controller: controller.bankACNoController,
                label: 'Bank A/C No.',
              ),
              const SizedBox(
                height: 10,
              ),
              RegisterTextField(
                controller: controller.branchNameAndAddressController,
                label: 'Branch Name & Address',
              ),
              const SizedBox(
                height: 10,
              ),
              RegisterTextField(
                controller: controller.iFSCNoController,
                label: 'IFSC No.',
              ),
              const SizedBox(
                height: 10,
              ),
              RegisterTextField(
                controller: controller.branchCityController,
                label: 'Branch City',
              ),
              const SizedBox(height: 30,),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    Get.to(()=>NomineeAndKycScreen(),transition: Transition.rightToLeftWithFade,duration: const Duration(milliseconds: 500));
                  },
                  child: Container(
                    width: 100,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(color: ColorHelper.brown,
                        borderRadius: BorderRadius.circular(30)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('NEXT',style: TextStyle(fontFamily: FontHelper.avenirMedium,letterSpacing: 1, color: Colors.white),),
                        Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,size: 18,)
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

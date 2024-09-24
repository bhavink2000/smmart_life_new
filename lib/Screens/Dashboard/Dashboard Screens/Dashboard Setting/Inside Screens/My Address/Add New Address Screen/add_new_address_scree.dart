import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/App%20Helper/font_helper.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Setting/Inside%20Screens/My%20Address/Add%20New%20Address%20Screen/Controller/add_new_address_controller.dart';
import '../../../../../../../App Helper/color_helper.dart';
import 'Widget/add_address_text_field.dart';
import 'Widget/add_new_address_appbar.dart';
import 'Widget/address_select_city.dart';
import 'Widget/address_select_state.dart';

class AddNewAddressScreen extends StatelessWidget {
  AddNewAddressScreen({super.key});
  final controller = Get.put(AddNewAddressController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: addNewAddressAppBar(),
      body: Container(
        width: Get.width,
            color: Colors.white,
        padding: const EdgeInsets.only(left: 20, right: 20,top: 15,bottom: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTextField(
                label: 'Address Line 1',
              ),
              const SizedBox(
                height: 5,
              ),
              const CustomTextField(
                label: 'Address Line 2',
              ),
              const SizedBox(
                height: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'City',
                    style: TextStyle(
                        fontSize: 12,
                        color: ColorHelper.doveGray.withOpacity(0.7),
                        fontFamily: FontHelper.avenirBook),
                  ),
                  AddAddressSelectCity(),
                  Divider(
                    color: ColorHelper.doveGray.withOpacity(0.5),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'State',
                    style: TextStyle(
                        fontSize: 12,
                        color: ColorHelper.doveGray.withOpacity(0.7),
                        fontFamily: FontHelper.avenirBook),
                  ),
                  AddAddressSelectState(),
                  Divider(
                    color: ColorHelper.doveGray.withOpacity(0.5),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const CustomTextField(
                label: 'Country',
              ),
              const SizedBox(
                height: 5,
              ),
              const CustomTextField(
                label: 'Zip Code',
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Set Default Address'),
                  Obx(
                    ()=> Switch(
                      value: controller.isDefault.value,
                      onChanged: (value) => controller.changeDefaultValue(value),
                      activeColor: Colors.white,
                      activeTrackColor: ColorHelper.brown,
                      inactiveThumbColor: Colors.white,
                      inactiveTrackColor: ColorHelper.silver.withOpacity(0.5),
                      trackOutlineWidth: MaterialStateProperty.all(0),
                      trackOutlineColor: MaterialStateProperty.all(ColorHelper.silver),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              GestureDetector(
                onTap: () {

                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: ColorHelper.brown,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: const Center(child: Text('SAVE ADDRESS',style: TextStyle(
                      color: Colors.white,
                      fontFamily: FontHelper.segoeuiRegular,
                      fontSize: 13
                  ),)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

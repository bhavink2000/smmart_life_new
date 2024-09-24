import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/App%20Helper/color_helper.dart';
import 'package:smmart_life_new/App%20Helper/font_helper.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Cart/Process%20To%20Payment/Address/Controller/select_address_controller.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Cart/Process%20To%20Payment/Address/Widget/select_address_appbar.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Cart/Process%20To%20Payment/Payment/select_payment_screen.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Setting/Inside%20Screens/My%20Address/Add%20New%20Address%20Screen/add_new_address_scree.dart';

class SelectAddressScreen extends StatelessWidget {
  SelectAddressScreen({super.key});
  final controller = Get.put(SelectAddressController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: selectAddressAppbar(),
      body: ColoredBox(
        color: Colors.white,
        child: Column(
          children: [
            ListView.builder(
              itemCount: controller.addresses.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Obx(
                      () => RadioListTile(
                        value: controller.addresses[index],
                        groupValue: controller.selectedAddress.value,
                        dense: true,
                        onChanged: (val) {
                          controller.selectedAddress.value = val;
                          log(controller.selectedAddress.value);
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: ColorHelper.grenadier,
                        title: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 0),
                          padding: EdgeInsets.zero,
                          child: Text(
                            controller.addressName[index],
                            style: const TextStyle(
                                fontFamily: FontHelper.avenirMedium),
                          ),
                        ),
                      ),
                    ),
                    const Divider()
                  ],
                );
              },
            ),
            ListTile(
              onTap: () {
                Get.to(() => AddNewAddressScreen());
              },
              dense: true,
              contentPadding: const EdgeInsets.symmetric(horizontal: 30),
              title: const Text('Add another address'),
            ),
            const Divider()
          ],
        ),
      ),
      bottomSheet: Container(
        height: 50,
        alignment: Alignment.centerRight,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                top: BorderSide(color: ColorHelper.silver.withOpacity(0.5)))),
        child: GestureDetector(
          onTap: () {
            Get.to(() => SelectPaymentMethodScreen());
          },
          child: Container(
            margin: const EdgeInsets.only(right: 15),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 7),
            decoration: BoxDecoration(
                color: ColorHelper.grenadier,
                borderRadius: BorderRadius.circular(5)),
            child: const Text(
              'Next',
              style: TextStyle(
                  color: Colors.white, fontFamily: FontHelper.segoeuiRegular),
            ),
          ),
        ),
      ),
    );
  }
}

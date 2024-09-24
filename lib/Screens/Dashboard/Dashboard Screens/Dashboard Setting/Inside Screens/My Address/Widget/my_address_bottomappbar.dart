import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Setting/Inside%20Screens/My%20Address/Add%20New%20Address%20Screen/add_new_address_scree.dart';
import '../../../../../../../App Helper/color_helper.dart';
import '../../../../../../../App Helper/font_helper.dart';

myAddressBottomAppBar() {
  return BottomAppBar(
      elevation: 0,
      color: Colors.white,
      child: GestureDetector(
        onTap: () {

          Get.to(()=> AddNewAddressScreen());
        },
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
              color: ColorHelper.brown,
              borderRadius: BorderRadius.circular(30)
          ),
          child: const Center(child: Text('ADD ANOTHER ADDRESS',style: TextStyle(
              color: Colors.white,
              fontFamily: FontHelper.segoeuiRegular,
              fontSize: 12
          ),)),
        ),
      )
  ) ;
}
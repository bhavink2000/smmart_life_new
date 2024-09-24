import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../App Helper/color_helper.dart';
import 'Widget/my_address_appbar.dart';
import 'Widget/my_address_bottomappbar.dart';
import 'Widget/my_address_widget.dart';

class SettingsMyAddressScreen extends StatelessWidget {
  const SettingsMyAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHelper.brown,
      appBar: myAddressAppBar(),
      body: Container(
        width: Get.width,
        color: Colors.white,
        padding:
            const EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShowMyAddressWidget(
                onTapDelete: () {
                  log('delete address');
                },
                addressType: 'HOME ADDRESS',
                address:
                    'Shilp Epitome, 510, behind Rajpath Rangoli Road, off Sindhubhavan Marg, Bodakdev, Ahmedabad, Gujarat 380054'),
            ShowMyAddressWidget(
                onTapDelete: () {
                  log('delete address');
                },
                addressType: 'WORK ADDRESS',
                address:
                    'Shilp Epitome, 510, behind Rajpath Rangoli Road, off Sindhubhavan Marg, Bodakdev, Ahmedabad, Gujarat 380054'),
          ],
        ),
      ),
      bottomNavigationBar: myAddressBottomAppBar(),
    );
  }
}

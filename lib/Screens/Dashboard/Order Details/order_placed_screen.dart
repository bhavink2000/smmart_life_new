import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Screens/Dashboard/Order%20Details/order_status_screen.dart';
import 'package:smmart_life_new/Screens/Dashboard/dashboard_screen.dart';
import '../../../App Helper/color_helper.dart';
import '../../../App Helper/font_helper.dart';
import '../../../Widgets/Buttons/rounded_button.dart';

class OrderPlacedScreen extends StatelessWidget {
  const OrderPlacedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                    onPressed: () {
                      Get.offAll(() =>DashboardScreen());
                    },
                    icon: const Icon(
                      Icons.clear,
                      size: 30,
                    )),
              ),
            ),
            SizedBox(
              height: Get.height / 6,
            ),
            Image.asset(
              'assets/images/OrderSuccessGroup 2388@3x.png',
              height: 150,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Check your email',
              style: TextStyle(
                  fontFamily: FontHelper.segoeuiRegular, fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Your order #212423 was placed with success.\n'
                  'You can see the status of the order at any time',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: FontHelper.avenirBook,
                  color: ColorHelper.doveGray,fontSize: 12),
            ),
            SizedBox(
              height: Get.height / 4,
            ),
            RoundedButton(
              btnLabel: 'SEE ORDER STATUS',
              btnColor: ColorHelper.grenadier,
              fontSize: 12,
              btnOnTap: () {
                Get.to(() => const OrderStatusScreen());
              },
            ),
            const SizedBox(height: 10,),
            RoundedButton(
              btnLabel: 'CLOSE',
              btnColor: ColorHelper.peachOrange.withOpacity(0.5),
              textColor: ColorHelper.black,
              fontSize: 12,
              btnOnTap: () {
                Get.offAll(() => DashboardScreen());
              },
            )
          ],
        ),
      ),
    );
  }
}

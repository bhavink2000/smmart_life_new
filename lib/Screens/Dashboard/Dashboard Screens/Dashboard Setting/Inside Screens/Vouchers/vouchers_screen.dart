import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/App%20Helper/font_helper.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Setting/Inside%20Screens/Vouchers/Widget/voucher_appbar.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Setting/Inside%20Screens/Vouchers/Widget/voucher_show_widget.dart';


class MyVouchersScreen extends StatelessWidget {
  const MyVouchersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: voucherAppbar(),
      body: Container(
        width: Get.width,
            color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ACTIVE VOUCHERS',
              style: TextStyle(
                  fontFamily: FontHelper.avenirMedium,
                  letterSpacing: -0.5),
            ),
            SizedBox(
              height: 20,
            ),
            VoucherShowWidget(
              nameOfDeal: 'Festive Discount',
              discount: '25%',
              lastDate: 'Febuary 2024',
            ),
            SizedBox(
              height: 20,
            ),
            VoucherShowWidget(
              nameOfDeal: 'Traditional Special',
              discount: '14%',
              lastDate: 'March 2024',
            ),
            SizedBox(
              height: 20,
            ),
            VoucherShowWidget(
              nameOfDeal: 'Holi Special',
              discount: '30%',
              lastDate: 'April 2024',
            ),
            SizedBox(height: 30,),
            Text(
              'USED VOUCHERS',
              style: TextStyle(
                  fontFamily: FontHelper.avenirMedium,
                  letterSpacing: -0.5),
            ),
            SizedBox(height: 20,),
            VoucherShowWidget(
              nameOfDeal: '2 for 1',
              discount: '20%',
              usedOn: '24th december 2022',
            )
          ],
        ),
      ),
    );
  }
}

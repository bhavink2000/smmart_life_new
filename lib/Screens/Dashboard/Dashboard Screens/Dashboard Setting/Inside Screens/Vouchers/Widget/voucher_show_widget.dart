import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../App Helper/color_helper.dart';
import '../../../../../../../App Helper/font_helper.dart';

class VoucherShowWidget extends StatelessWidget {
  final String? nameOfDeal, discount, lastDate, usedOn;
  const VoucherShowWidget({super.key, this.nameOfDeal, this.discount, this.lastDate, this.usedOn});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 100,
          width: Get.width / 1.85,
          decoration: BoxDecoration(
              color: ColorHelper.silver.withOpacity(0.3),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(5))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$nameOfDeal',style: const TextStyle(
                fontSize: 20,
                fontFamily: FontHelper.avenirMedium,
              ),),
              Text(lastDate != null ? 'Valid until $lastDate' : 'Used on $usedOn',style: const TextStyle(
                fontSize: 13,
                fontFamily: FontHelper.avenirMedium,
              ),)
            ],
          ),
        ),
        SizedBox(
          height: 89,
          // width: 1,
          child: Image.asset('assets/images/Rectangle@3x.png'),
        ),
        Container(
          height: 100,
          width: Get.width / 3.5,
          decoration: BoxDecoration(
              color: ColorHelper.silver.withOpacity(0.3),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(10))),
          child: Center(
            child: Text('$discount',style: const TextStyle(
                fontSize: 30,
                fontFamily: FontHelper.avenirMedium,
                color: ColorHelper.brown
            ),),
          ),
        )
      ],
    );
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../App Helper/color_helper.dart';
import '../../../../../../../App Helper/font_helper.dart';

class ShowMyAddressWidget extends StatelessWidget {
  final String? address, addressType ;
  final VoidCallback? onTapDelete ;
  const ShowMyAddressWidget({super.key, this.address, this.addressType, this.onTapDelete});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              '$addressType',
              style: const TextStyle(
                  color: ColorHelper.doveGray,
                  fontFamily: FontHelper.avenirMedium,
                  letterSpacing: -0.5),
            ),
            const Spacer(),
            // InkWell(
            //   onTap: onTapDelete,
            //   child: ImageIcon(AssetImage('assets/images/delete_dustBin.png'),color: Colors.red,)
            // ),
            IconButton(
                onPressed: (){
                  log('delete address') ;
                },
                icon: const ImageIcon(AssetImage('assets/images/delete_dustBin.png'),),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              style: const ButtonStyle(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(right: Get.width / 3, bottom: 0),
            child: Text(
                '$address',
            style: const TextStyle(
              fontFamily: FontHelper.avenirMedium
            ),),
          ),
        ),
        const Divider(
          color: ColorHelper.silver,
        ),
        const SizedBox(height: 10,)
      ],
    );
  }
}

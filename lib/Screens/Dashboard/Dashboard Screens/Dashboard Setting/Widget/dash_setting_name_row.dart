import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../App Helper/font_helper.dart';

class DashSettingNameRow extends StatelessWidget {
  final String? name;
  final VoidCallback? onTap;
  const DashSettingNameRow({super.key, this.name, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: Get.width,
          padding: const EdgeInsets.only(left: 60,top: 10,bottom: 10),
          child: Text(name!,style: const TextStyle(fontFamily: FontHelper.segoeuiRegular),),
        ),
      ),
    );
  }
  // return Column(
  // children: [
  // InkWell(
  // onTap: onTap,
  // child: Padding(
  // padding: const EdgeInsets.symmetric(vertical: 10),
  // child: Row(
  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
  // crossAxisAlignment: CrossAxisAlignment.center,
  // children: [
  // Text('$name',style: const TextStyle(
  // fontSize: 16
  // ),),
  // const Spacer(),
  // const Icon(Icons.arrow_forward_ios)
  // ],
  // ),
  // ),
  // ),
  // const Divider(color: ColorHelper.Silver,),
  // ],
  // );
}

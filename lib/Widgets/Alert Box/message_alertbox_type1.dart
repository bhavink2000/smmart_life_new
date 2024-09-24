import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../App Helper/color_helper.dart';
import '../../App Helper/font_helper.dart';

class MessageType1 extends StatelessWidget {
  final Color? clr ;
  final String? msg ;
  const MessageType1({super.key, this.clr, this.msg});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: AlertDialog(
          backgroundColor: Colors.white,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          elevation: 5,
          content: SizedBox(
            height: 150,
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 0,),
                Text('$msg',style: const TextStyle(
                    fontFamily: FontHelper.avenirMedium,
                    fontSize: 18,
                    color: ColorHelper.black
                ),),
                GestureDetector(
                  onTap: (){Get.back();},
                  child: Container(
                    width: 200,
                    padding: const EdgeInsets.symmetric(vertical: 7),
                    decoration: BoxDecoration(
                        color: clr,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: const Text('OK',style: TextStyle(color: Colors.white,fontFamily: FontHelper.avenirMedium),textAlign: TextAlign.center,),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

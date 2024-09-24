import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../App Helper/color_helper.dart';
import '../../App Helper/font_helper.dart';

class MessageType2 extends StatelessWidget {
  final Color? clr ;
  final String? msg ;
  const MessageType2({super.key, this.clr, this.msg});

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
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){Get.back();},
                      child: Container(
                        width: 100,
                        padding: const EdgeInsets.symmetric(vertical: 7),
                        decoration: BoxDecoration(
                            color: clr,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: const Text('ACCEPT',style: TextStyle(color: Colors.white,fontFamily: FontHelper.avenirMedium),textAlign: TextAlign.center,),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    GestureDetector(
                      onTap: (){Get.back();},
                      child: Container(
                        width: 100,
                        padding: const EdgeInsets.symmetric(vertical: 7),
                        decoration: BoxDecoration(
                            color: clr,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: const Text('REJECT',style: TextStyle(color: Colors.white,fontFamily: FontHelper.avenirMedium),textAlign: TextAlign.center,),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

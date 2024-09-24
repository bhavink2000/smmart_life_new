import 'package:get/get.dart';
import 'package:smmart_life_new/App%20Helper/color_helper.dart';
import 'package:smmart_life_new/Widgets/Alert%20Box/message_alertbox_type1.dart';
import 'package:smmart_life_new/Widgets/Alert%20Box/message_alertbox_type2.dart';
import 'package:smmart_life_new/Widgets/Alert%20Box/message_alertbox_type3.dart';

class MessageHelper {
  static messageGreenType1(String? msg) {
    Get.dialog(MessageType1(clr: ColorHelper.brown, msg: msg),
        barrierDismissible: false);
  }

  static messageRedType1(String? msg) {
    Get.dialog(MessageType1(clr: ColorHelper.grenadier, msg: msg),
        barrierDismissible: false);
  }

  static messageGreenType2(String? msg) {
    Get.dialog(MessageType2(msg: msg, clr: ColorHelper.brown),
        barrierDismissible: false);
  }

  static messageRedType2(String? msg) {
    Get.dialog(MessageType2(msg: msg, clr: ColorHelper.grenadier),
        barrierDismissible: false);
  }

  static messageGreenType3(String? msg) {
    Get.dialog(
        MessageType3(
          msg: msg,
          clr: ColorHelper.brown,
        ),
        barrierDismissible: false);
  }

  static messageRedType3(String? msg) {
    Get.dialog(
        MessageType3(
          msg: msg,
          clr: ColorHelper.grenadier,
        ),
        barrierDismissible: false);
  }
}

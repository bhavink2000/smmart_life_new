import 'dart:developer';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  Rx<File>? profilePicture;
  RxBool profilePicturePicked = false.obs;
  Future pickProfilePicture() async {
    try {
      profilePicturePicked(false);
      FilePickerResult? pickedFile =
          await FilePicker.platform.pickFiles(type: FileType.image);
      if (pickedFile != null) {
        profilePicture = File(pickedFile.files.single.path!).obs;
        profilePicturePicked(true);
        log('in first if ${profilePicture?.value}');
      } else if (pickedFile == null) {
        if (profilePicture?.value == null) {
          profilePicturePicked(false);
          log('file is not picked');
        } else {
          profilePicturePicked(true);
          log('file is already in new is not selected');
        }
      }
    } on PlatformException catch (e) {
      if (profilePicture?.value == null) {
        profilePicturePicked(false);
        log('in if it is null ${profilePicture?.value}');
      } else {
        log('in else it is not null ${profilePicture?.value}');
        profilePicturePicked(true);
      }
      log("<><><> File not Picked  : $e");
    } catch (e) {
      log('last error $e');
    }
  }
}

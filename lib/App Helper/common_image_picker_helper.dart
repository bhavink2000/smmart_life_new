import 'dart:developer';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as p;
import 'color_helper.dart';

// ignore: must_be_immutable
class CommonFilePickerTile extends StatelessWidget {
  // if you are using this declare variable like this in controller :=> Rxn<File> fileName = Rxn<File>();
  final String label;
  Rxn<File> file;
  CommonFilePickerTile({
    super.key,
    required this.label,
    required this.file,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CommonFilePickerTileController());
    return Container(
      height: 45,
      width: Get.width,
      decoration: const BoxDecoration(
        // color: Colors.red,
          border:
              Border(bottom: BorderSide(width: 1, color: ColorHelper.silver))),
      child: Obx(
        () => Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            file.value == null
                ? Text(
                    label,
                    style: const TextStyle(fontSize: 16),
                  )
                : Container(
                    alignment: Alignment.centerLeft,
                    width: p.extension(file.value!.path) == '.pdf' ||
                            p.extension(file.value!.path) == '.PDF'
                        ? 200
                        : 100,
                    height: 40,
                    child: p.extension(file.value!.path) == '.pdf' ||
                            p.extension(file.value!.path) == '.PDF'
                        ? Text(p.basename(file.value!.path))
                        : InkWell(
                            onTap: () {
                              if (file.value != null) {
                                Get.dialog(Dialog(
                                  backgroundColor: Colors.transparent,
                                  child: Image.file(file.value!),
                                ));
                              }
                            },
                            child: file.value == null
                                ? Text(
                                    label,
                                    // style: const TextStyle(),
                                  )
                                : Image.file(
                                    file.value!,
                                    fit: BoxFit.cover,
                                  ),
                          ),
                  ),
            const Spacer(),
            IconButton(
                onPressed: () {
                  controller.pickFileManager().then((value) {
                    file.value = value;
                  });
                },
                icon: const Icon(Icons.file_copy_rounded,
                    color: ColorHelper.brown)),
            IconButton(
                onPressed: () {
                  controller.pickCamera().then((value) {
                    file.value = value!;
                  });
                },
                icon: const Icon(Icons.camera_alt_rounded,
                    color: ColorHelper.brown)),
          ],
        ),
      ),
    );
  }
}

class CommonFilePickerTileController extends GetxController {
  Future<File?> pickCamera() async {
    try {
      final pickedFile = await ImagePicker()
          .pickImage(source: ImageSource.camera, imageQuality: 25);
      if (pickedFile == null) {
        Get.rawSnackbar(
            message: 'No file chosen',
            icon: const Icon(Icons.warning_amber, color: Colors.white),
            backgroundColor: ColorHelper.grenadier);
        return null;
      }
      final file = File(pickedFile.path);
      return file;
    } on PlatformException catch (e) {
      log("platForm-> $e");
    } catch (e) {
      log("error -> $e");
    }
    return null;
  }

  Future<File?> pickFileManager() async {
    try {
      final pickedFile = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowMultiple: false,
        allowedExtensions: ['jpg', 'jpeg', 'png', 'pdf'],
      );
      if (pickedFile == null) {
        Get.rawSnackbar(
            message: 'No file chosen',
            icon: const Icon(Icons.warning_amber, color: Colors.white),
            backgroundColor: ColorHelper.grenadier);
        return null;
      }
      final originalFile = File(pickedFile.files.single.path!);
      log('in helper class $originalFile');
      return originalFile;
    } on PlatformException catch (e) {
      log("PlatformException -> $e");
      return null;
    } catch (e) {
      log("Error -> $e");
      return null;
    }
  }
}

import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/App%20Helper/color_helper.dart';
import 'package:smmart_life_new/App%20Helper/snackbar_helper.dart';

import '../../../../../../../App Helper/font_helper.dart';

changePasswordAlertBox() {
  Get.dialog(ChangePasswordAlertBox(), barrierDismissible: false);
}

class ChangePasswordAlertBox extends StatelessWidget {
  ChangePasswordAlertBox({super.key});
  final oldPassController = TextEditingController();
  final newPassController = TextEditingController();
  final reEnterPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        elevation: 5,
        content: SizedBox(
          width: 200,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Change password',
                style: TextStyle(
                    fontFamily: FontHelper.avenirBook,
                    fontSize: 14,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              ChangePassTextField(
                label: 'Enter old password',
                controller: oldPassController,
              ),
              ChangePassTextField(
                label: 'New password',
                controller: newPassController,
              ),
              ChangePassTextField(
                label: 'Re-enter password',
                controller: reEnterPassController,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.back();
                      oldPassController.dispose();
                      newPassController.dispose();
                      reEnterPassController.dispose();
                    },
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        overlayColor: MaterialStatePropertyAll(
                            ColorHelper.grenadier.withOpacity(0.2))),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(color: ColorHelper.grenadier),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      if (newPassController.text.isEmpty &&
                          reEnterPassController.text.isEmpty &&
                          oldPassController.text.isEmpty) {
                        SnackBarHelper.getWarningMsg('All field are required.');
                      } else {
                        if (reEnterPassController.text !=
                            newPassController.text) {
                          SnackBarHelper.getWarningMsg(
                              'Password is not matched.');
                        } else {
                          log('run function');
                        }
                      }
                    },
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        overlayColor: MaterialStatePropertyAll(
                            ColorHelper.brown.withOpacity(0.2))),
                    child: const Text(
                      'Change',
                      style: TextStyle(color: ColorHelper.brown),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ChangePassTextField extends StatelessWidget {
  final String? label;
  final bool readOnly;
  final TextEditingController? controller;
  const ChangePassTextField({
    super.key,
    this.label,
    this.controller,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      readOnly: readOnly,
      cursorColor: Colors.black54,
      decoration: InputDecoration(
          border: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
          label: Text(label!),
          labelStyle: const TextStyle(color: Colors.black),
          contentPadding: EdgeInsets.zero),
    );
  }
}

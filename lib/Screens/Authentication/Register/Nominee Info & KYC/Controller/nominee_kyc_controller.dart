import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NomineeAndKycController extends GetxController {
  final nomineeNameController = TextEditingController();
  final nomineeAgeController = TextEditingController();
  final gstNoController = TextEditingController();
  final panNoController = TextEditingController();

  List relationTypes = ['Father/Mother', 'Wife/Husband', 'Children'];

  RxString relation = ''.obs;
  RxBool isRelationVisible = false.obs;
  RxString selectId = ''.obs;
  RxBool isSelectedIdVisible = false.obs;

  List idProofTypes = [
    'Passport',
    'Voter ID Card',
    'Driving Licence',
    'Aadhar Card'
  ];

  var isSelected = false.obs;

  RxBool termsAndCondition = false.obs;

  checkToggle(newVal) => termsAndCondition.value = newVal;
  Rxn<File> panFile = Rxn<File>();
  Rxn<File> idProofFile = Rxn<File>();
  Rxn<File> chequeFile = Rxn<File>();
}

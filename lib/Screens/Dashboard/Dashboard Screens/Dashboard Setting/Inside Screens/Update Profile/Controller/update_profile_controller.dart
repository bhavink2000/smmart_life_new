import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateProfileController extends GetxController {
  final firstNameController = TextEditingController();
  final middleNameController = TextEditingController();
  final lastNameController = TextEditingController();

  RxString gender = ''.obs;

  final dobController = TextEditingController();
  final addressController = TextEditingController();
  final postalCodeController = TextEditingController();
  final emailController = TextEditingController();
  final mobileController = TextEditingController();

  RxString city = ''.obs;

  List cityList = [
    'Ahmedabad',
    'Rajkot',
    'Vadodara',
    'Anand',
    'Surat',
    'Gandhinagar',
  ];

  RxString state = ''.obs;

  List stateList = [
    'Gujarat',
    'Maharashtra',
    'Bihar',
    'Delhi',
  ];

///

  final bankNameController = TextEditingController() ;
  final accountHolderNameController = TextEditingController() ;
  final bankACNoController = TextEditingController() ;
  final branchNameAndAddressController = TextEditingController() ;
  final iFSCNoController = TextEditingController() ;
  final branchCityController = TextEditingController() ;


///

  final nomineeNameController = TextEditingController() ;
  final nomineeAgeController = TextEditingController() ;
  final gstNoController = TextEditingController() ;
  final panNoController = TextEditingController() ;

  List relationTypes = [
    'Father/Mother',
    'Wife/Husband',
    'Children'
  ] ;

  RxString relation = ''.obs ;
  RxBool isRelationVisible = false.obs ;
  RxString selectId = ''.obs ;
  RxBool isSelectedIdVisible = false.obs ;

  List idProofTypes = [
    'Passport',
    'Voter ID Card',
    'Driving Licence',
    'Aadhar Card'
  ] ;

  var isSelected = false.obs ;

  RxBool termsAndCondition = false.obs;

  checkToggle(newVal) => termsAndCondition.value = newVal;

  Rxn<File> panFile = Rxn<File>();
  Rxn<File> idProofFile = Rxn<File>();
  Rxn<File> chequeFile = Rxn<File>();
  // Rx<File>? panFile;
  // RxBool isPanPicked = false.obs;
  // Future pickPanCard() async {
  //   try {
  //     isPanPicked(false);
  //     FilePickerResult? pickedfile =
  //     await FilePicker.platform.pickFiles(type: FileType.any);
  //     if (pickedfile != null) {
  //       panFile = File(pickedfile.files.single.path!).obs;
  //       isPanPicked(true);
  //       log('in first if ${panFile?.value}');
  //     } else if (pickedfile == null) {
  //       if (panFile?.value == null) {
  //         isPanPicked(false);
  //         log('file is not picked') ;
  //       } else {
  //         isPanPicked(true);
  //         log('file is already in new is not selected');
  //       }
  //     }
  //   } on PlatformException catch (e) {
  //     if(panFile?.value == null) {
  //       isPanPicked(false);
  //       log('in if it is null ${panFile?.value}');
  //     } else {
  //       log('in else it is not null ${panFile?.value}');
  //       isPanPicked(true);
  //     }
  //     log("<><><> File not Picked  : $e");
  //   } catch (e) {
  //     log('last error $e');
  //   }
  // }
  //
  // Rx<File>? idProofFile;
  // RxBool isIdProofPicked = false.obs;
  // Future pickIdProof() async {
  //   try {
  //     isIdProofPicked(false);
  //     FilePickerResult? pickedfile =
  //     await FilePicker.platform.pickFiles(type: FileType.any);
  //     if (pickedfile != null) {
  //       idProofFile = File(pickedfile.files.single.path!).obs;
  //       isIdProofPicked(true);
  //       log('in first if ${idProofFile?.value}');
  //     } else if (pickedfile == null) {
  //       if (idProofFile?.value == null) {
  //         isIdProofPicked(false);
  //         log('file is not picked') ;
  //       } else {
  //         isIdProofPicked(true);
  //         log('file is already in new not selected');
  //       }
  //     }
  //   } on PlatformException catch (e) {
  //     if(idProofFile?.value == null) {
  //       isIdProofPicked(false);
  //       log('in if it is null ${idProofFile?.value}');
  //     } else {
  //       log('in else it is not null ${idProofFile?.value}');
  //       isIdProofPicked(true);
  //     }
  //     log("<><><> File not Picked  : $e");
  //   } catch (e) {
  //     log('last error $e');
  //   }
  // }
  //
  // Rx<File>? chequeFile;
  // RxBool isChequePicked = false.obs;
  // Future pickCheque() async {
  //   try {
  //     isChequePicked(false);
  //     FilePickerResult? pickedfile =
  //     await FilePicker.platform.pickFiles(type: FileType.any);
  //     if (pickedfile != null) {
  //       chequeFile = File(pickedfile.files.single.path!).obs;
  //       isChequePicked(true);
  //       log('in first if ${chequeFile?.value}');
  //     } else if (pickedfile == null) {
  //       if (chequeFile?.value == null) {
  //         isChequePicked(false);
  //         log('file is not picked') ;
  //       } else {
  //         isChequePicked(true);
  //         log('file is already in new not selected');
  //       }
  //     }
  //   } on PlatformException catch (e) {
  //     if(chequeFile?.value == null) {
  //       isChequePicked(false);
  //       log('in if it is null ${chequeFile?.value}');
  //     } else {
  //       log('in else it is not null ${chequeFile?.value}');
  //       isChequePicked(true);
  //     }
  //     log("<><><> File not Picked  : $e");
  //   } catch (e) {
  //     log('last error $e');
  //   }
  // }
}
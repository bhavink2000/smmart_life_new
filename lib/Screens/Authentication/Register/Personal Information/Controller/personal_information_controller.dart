import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalInformationController extends GetxController {
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
}

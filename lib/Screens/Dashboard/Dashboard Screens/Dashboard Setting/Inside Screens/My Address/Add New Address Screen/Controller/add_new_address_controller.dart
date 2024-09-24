import 'package:get/get.dart';

class AddNewAddressController extends GetxController {

  RxBool isDefault = false.obs ;

  changeDefaultValue(value) {
    isDefault.value = value ;
  }

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
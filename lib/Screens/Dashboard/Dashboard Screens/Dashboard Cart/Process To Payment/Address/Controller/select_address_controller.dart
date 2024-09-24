import 'package:get/get.dart';

class SelectAddressController extends GetxController {

  RxString selectedAddress = ''.obs ;

  List addresses = [
    'Address 1',
    'Address 2',
    'Address 3',
  ] ;

  List addressName = [
    '2GHH+HR2, Judges Bunglow Rd, Suryapooja Block B, Satellite, Ahmedabad, Gujarat 380015',
    'Shilp Epitome, 510, behind Rajpath Rangoli Road, off Sindhubhavan Marg, Bodakdev, Ahmedabad, Gujarat 380054',
    'B - 210, Infinity Tower, Nr Ramada Hotel, Corporate Rd, Ahmedabad-15, Gujarat, INDIA.'
  ];


}
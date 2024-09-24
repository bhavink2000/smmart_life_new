import 'package:get/get.dart';

class FilterSortController extends GetxController {


  RxList<double> values = [1.00, 10000.00].obs ;
  RxDouble lowerLevel = 1.0.obs ;
  RxDouble upperLevel = 10000.0.obs ;

  List categories = [
    'Health Care',
    'Skin Care',
    'Hair Care',
    'Face Skin',
    'Blusher',
    'Natural',
  ] ;

  RxString selectedCategory = ''.obs ;

  // void setRangeValues(RangeValues values) {
  //   rangeValues.value = values;
  //   rangeLabels.value =
  //       RangeLabels('${values.start.toInt()}', '${values.end.toInt()}');
  //   update();
  // }

  // void setRangeLabels(RangeLabels value) {
  //   rangeLabels.value = value;
  //   update();
  // }

}
import 'dart:async';

import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

class ProductDetailsController extends GetxController {
  @override
  void onInit() {
    isLoadMore(false);
    super.onInit();
  }

  RxBool isOutofStock = false.obs;

  RxInt tabIndex = 0.obs;

  RxInt currentImageIndex = 0.obs;

  RxInt productQuantityCount = 1.obs;

  Timer? timer;

  RxBool btnPressed = false.obs;

  void increment() {
    if (productQuantityCount < 10) {
      productQuantityCount.value++;
    }
  }

  void decrement() {
    if (productQuantityCount > 1) {
      productQuantityCount.value--;
    }
  }

  void shareWithLink(imageUrl, name, price) async {
    await Share.share(
        'check out this cool product:\n$imageUrl \nName: $name \nPrice: $price');
  }

  RxInt rating = 0.obs;

  RxBool isLoadMore = false.obs;
}

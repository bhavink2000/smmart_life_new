import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:get/get.dart';
import '../../../../App Helper/color_helper.dart';
import '../../../../App Helper/font_helper.dart';
import '../../../../Widgets/Buttons/rounded_button.dart';
import 'Controller/filter_sort_controller.dart';

filterBottomSheet() {
  Get.bottomSheet(
    elevation: 8,
    isScrollControlled: true,
    _filterBottom(),
  );
}

class _filterBottom extends StatelessWidget {

  final controller = Get.put(FilterSortController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height / 1.2,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const Text(
                  'FILTER & SORT',
                  style: TextStyle(
                      fontFamily: FontHelper.avenirBook,
                      fontSize: 14,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: const Text(
                    'Close',
                    style: TextStyle(
                      color: ColorHelper.grenadier,
                      fontFamily: FontHelper.avenirBook,
                      fontSize: 14,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            const Divider(color: ColorHelper.lightGrey),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Select categories',
              style: TextStyle(
                  fontFamily: FontHelper.avenirMedium,
                  fontSize: 16,
                  letterSpacing: -0.5),
            ),
            const SizedBox(
              height: 10,
            ),
            GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 40,
                    mainAxisSpacing: 10),
                itemCount: controller.categories.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      controller.selectedCategory.value =
                          controller.categories[index];
                      log(controller.selectedCategory.value);
                    },
                    child: Obx(
                      () => Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 13, vertical: 7),
                        decoration: BoxDecoration(
                            color: controller.selectedCategory.value ==
                                    controller.categories[index]
                                ? ColorHelper.brown
                                : ColorHelper.silver.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(30)),
                        child: Text(
                          controller.categories[index],
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: FontHelper.avenirBook,
                              color: controller.selectedCategory.value ==
                                      controller.categories[index]
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      ),
                    ),
                  );
                }),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Sort watchers by',
              style: TextStyle(
                  fontFamily: FontHelper.avenirMedium,
                  fontSize: 16,
                  letterSpacing: -0.5),
            ),
            const SizedBox(
              height: 10,
            ),
            GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 40,
                    mainAxisSpacing: 10),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
                    decoration: BoxDecoration(
                        color: ColorHelper.silver.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(30)),
                    child: const Text(
                      'Price',
                      style: TextStyle(
                          fontSize: 12, fontFamily: FontHelper.avenirBook),
                    ),
                  );
                }),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Select a price range',
              style: TextStyle(
                  fontFamily: FontHelper.avenirMedium,
                  fontSize: 16,
                  letterSpacing: -0.5),
            ),
            const SizedBox(
              height: 10,
            ),
            FlutterSlider(
              values: controller.values,
              rangeSlider: true,
              trackBar: FlutterSliderTrackBar(
                  activeTrackBar:
                  const BoxDecoration(color: ColorHelper.brown),
                  inactiveTrackBar: BoxDecoration(color: Colors.grey[300])),
              min: 1,
              max: 10000,
              onDragging: (index, lower, upper) {
                controller.lowerLevel.value = lower;
                controller.upperLevel.value = upper;
                log('${controller.upperLevel.value}');
              },
              handler: FlutterSliderHandler(
                decoration: const BoxDecoration(),
                child: Image.asset(
                  'assets/images/pin-searching@3x-bgremove_other.png',
                  fit: BoxFit.cover,
                ),
              ),
              rightHandler: FlutterSliderHandler(
                decoration: const BoxDecoration(),
                child: Image.asset(
                  'assets/images/pin-searching@3x-bgremove_other.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: RoundedButton(
                btnOnTap: () {
                  Get.back();
                },
                btnLabel: 'APPLY',
                btnColor: ColorHelper.brown,
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.center,
              child: RoundedButton(
                btnOnTap: () {
                  Get.back();
                  controller.selectedCategory.value = '';
                },
                btnLabel: 'CLEAR FILTERS',
                btnColor: ColorHelper.surfCrest.withOpacity(0.5),
                fontSize: 12,
                textColor: Colors.black87,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

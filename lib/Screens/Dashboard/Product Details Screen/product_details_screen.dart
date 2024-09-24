import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/App%20Helper/color_helper.dart';
import 'package:smmart_life_new/Screens/Dashboard/Product%20Details%20Screen/Controller/product_details_controller.dart';
import 'package:smmart_life_new/Screens/Dashboard/Product%20Details%20Screen/Show%20Image%20Screen/show_image_screen.dart';
import 'package:smmart_life_new/Screens/Dashboard/Product%20Details%20Screen/Widget/product_details_review.dart';
import 'package:smmart_life_new/Screens/Dashboard/Product%20Details%20Screen/Widget/product_details_specifications_description.dart';

import '../../../App Helper/Test Helper/image_helper.dart';
import '../../../App Helper/asset_helper.dart';
import '../../../App Helper/font_helper.dart';
import '../../../Widgets/Alert Box/alert_box_for_can_not_write_review.dart';
import '../../../Widgets/Rating Indicator/rating_indicator.dart';
import 'Widget/product_details_appbar.dart';
import 'Widget/product_details_bottombar.dart';
import 'Widget/similar_products.dart';

class ProductDetailsScreen extends StatelessWidget {
  final String? productTitle, image, price;
  ProductDetailsScreen({super.key, this.productTitle, this.image, this.price});
  final me = true;
  final controller = Get.put(ProductDetailsController());

  @override
  Widget build(BuildContext context) {
    log('starting ${controller.tabIndex.value}');
    return PopScope(
      canPop: true,
      onPopInvoked: (value) {
        controller.tabIndex.value = 0;
        controller.rating.value = 0;
        controller.isLoadMore.value = false;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: productDetailsAppBar(image, productTitle, price),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                color: Colors.white,
                height: Get.height / 2,
                width: Get.width,
                child: CarouselSlider(
                  options: CarouselOptions(
                      height: Get.height / 2,
                      autoPlay: false,
                      autoPlayAnimationDuration: const Duration(seconds: 1),
                      viewportFraction: 1,
                      enableInfiniteScroll: false,
                      onPageChanged: (index, reason) {
                        controller.currentImageIndex.value = index;
                      }),
                  items: ImageHelper.productImages.map((e) {
                    return InkWell(
                        onTap: () {
                          Get.to(() => ShowImageScreen(
                                image: e,
                              ));
                        },
                        child: CachedNetworkImage(
                          imageUrl: e,
                          imageBuilder: (context, imageProvider) => Image(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                          placeholder: (context, url) => SizedBox(
                              height: 150,
                              child: Center(
                                  child: Image(
                                image: AssetHelper.loadingGifRed,
                                width: 50,
                              ))),
                          errorWidget: (context, url, error) => SizedBox(
                              height: 150,
                              width: Get.width / 1.5,
                              child: Image(image: AssetHelper.smmartLifeLogo)),
                        ));
                  }).toList(),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                color: Colors.white,
                width: Get.width,
                child: Obx(
                  () => DotsIndicator(
                    dotsCount: ImageHelper.productImages.length,
                    position: controller.currentImageIndex.value,
                    decorator: const DotsDecorator(
                        activeColor: ColorHelper.grenadier,
                        color: ColorHelper.lightGrey),
                  ),
                ),
              ),
              Container(
                width: Get.width,
                decoration: const BoxDecoration(color: Colors.white),
                // margin: const EdgeInsets.only(left: 10, right: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Skin Care, Health Care',
                          style: TextStyle(
                              color: ColorHelper.charade,
                              fontFamily: FontHelper.avenirBook,
                              fontSize: 13,
                              letterSpacing: -0.8),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '$productTitle SMMART LIFE',
                        style: const TextStyle(
                            color: ColorHelper.charade,
                            fontFamily: FontHelper.arvinHavy,
                            fontSize: 18,
                            letterSpacing: -0.8),
                      ),
                    ),
                    const SizedBox(height: 10),

                    /// Ratings Widget
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RatingIndicator(
                          ratings: 3,
                          size: 16,
                        ),
                        SizedBox(width: 10),
                        Text(
                          '1389 Reviews',
                          style: TextStyle(
                              fontFamily: FontHelper.avenirBook, fontSize: 11),
                        ),
                      ],
                    ),
                    controller.isOutofStock.value == true
                        ? const Column(
                            children: [
                              SizedBox(height: 10),
                              Text(
                                'Out of stock',
                                style: TextStyle(
                                    fontFamily: FontHelper.avenirBook,
                                    color: ColorHelper.grenadier,
                                    fontSize: 14),
                              )
                            ],
                          )
                        : Container(),
                    const SizedBox(height: 10),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 10, top: 5, bottom: 5),
                      decoration: BoxDecoration(
                          color: ColorHelper.lightBrown,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Product BV:',
                                style: TextStyle(
                                  color: ColorHelper.charade,
                                  fontFamily: FontHelper.avenirBook,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '25.50',
                                style: TextStyle(
                                  color: ColorHelper.charade,
                                  fontFamily: FontHelper.arvinHavy,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                'HSN NO:',
                                style: TextStyle(
                                  color: ColorHelper.charade,
                                  fontFamily: FontHelper.avenirBook,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                '33427643',
                                style: TextStyle(
                                  color: ColorHelper.charade,
                                  fontFamily: FontHelper.arvinHavy,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    // const Divider(color: ColorHelper.lightGrey, thickness: 1),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '₹$price.00',
                          style: const TextStyle(
                            color: ColorHelper.charade,
                            fontFamily: FontHelper.avenirBook,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Container(
                          width: 140,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  color: ColorHelper.silver.withOpacity(0.5))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Material(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                                child: InkWell(
                                  borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(50),
                                      topLeft: Radius.circular(50)),
                                  onTap: () {
                                    controller.decrement();
                                  },
                                  child: Container(
                                      height: 30,
                                      width: 45,
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child:
                                          const Icon(Icons.remove, size: 14)),
                                ),
                              ),
                              Container(
                                  height: 25,
                                  width: 1,
                                  color: ColorHelper.silver.withOpacity(0.5)),
                              Obx(
                                () => Container(
                                  width: 45,
                                  alignment: Alignment.center,
                                  child: Text(
                                    '${controller.productQuantityCount.value}',
                                    style: const TextStyle(
                                        fontSize: 13,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                  height: 25,
                                  width: 1,
                                  color: ColorHelper.silver.withOpacity(0.5)),
                              Material(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                                child: InkWell(
                                  borderRadius: const BorderRadius.only(
                                      bottomRight: Radius.circular(50),
                                      topRight: Radius.circular(50)),
                                  onTap: () {
                                    controller.increment();
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 45,
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: const Icon(Icons.add, size: 14),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 5),
                  ],
                ),
              ),
              const ProductDetailsSpecificationsAndDescription(),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(color: ColorHelper.lightGrey, thickness: 1),
              ),
              const SizedBox(height: 10),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.only(bottom: 10),
                child: const Text('Reviews :',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: FontHelper.arvinHavy,
                        fontWeight: FontWeight.w600)),
              ),
              ProductDetailsTabReview(),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(color: ColorHelper.lightGrey, thickness: 1),
              ),
              Container(
                width: Get.width,
                decoration: const BoxDecoration(color: Colors.white),
                // margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Leave a Replay',
                      style: TextStyle(
                        color: ColorHelper.black,
                        fontFamily: FontHelper.arvinHavy,
                        fontSize: 16,
                      ),
                    ),
                    const TextField(
                      cursorColor: Colors.black87,
                      maxLines: 10,
                      minLines: 1,
                      style: TextStyle(
                          fontFamily: FontHelper.avenirBook, fontSize: 14),
                      decoration: InputDecoration(
                          hintText: 'Enter your feedback',
                          contentPadding: EdgeInsets.zero,
                          border: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: ColorHelper.lightGrey)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: ColorHelper.black)),
                          disabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: ColorHelper.lightGrey)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: ColorHelper.lightGrey))),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Text(
                          'Provide your ratings',
                          style: TextStyle(
                            color: ColorHelper.charade,
                            fontFamily: FontHelper.avenirBook,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Obx(
                          () => RatingIndicatorForInput(
                            size: 30,
                            onRatingChanged: (rating) {
                              controller.rating.value = rating;
                            },
                            rating: controller.rating.value,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        alertBoxForCanNotWriteReview();
                      },
                      child: Container(
                        width: 130,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ColorHelper.grenadier,
                        ),
                        child: const Text(
                          'SUBMIT',
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 2,
                              fontFamily: FontHelper.avenirMedium),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 10),
                      child: Text(
                        'Similar products',
                        style: TextStyle(
                            fontFamily: FontHelper.arvinHavy,
                            fontSize: 18,
                            color: ColorHelper.charade),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SimilarProducts(),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
        bottomNavigationBar: ProductDetailsBottomBar(
            imageUrl: image, name: productTitle, price: price),
      ),
    );
  }
}

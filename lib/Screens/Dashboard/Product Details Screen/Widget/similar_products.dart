import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Screens/Dashboard/Product%20Details%20Screen/Controller/product_details_controller.dart';

import '../../../../App Helper/Test Helper/image_helper.dart';
import '../../../../App Helper/asset_helper.dart';
import '../../../../App Helper/color_helper.dart';
import '../../../../App Helper/font_helper.dart';
import '../../../../Widgets/Rating Indicator/rating_indicator.dart';
import '../product_details_screen.dart';

class SimilarProducts extends StatelessWidget {
  SimilarProducts({super.key});
  final controller = Get.find<ProductDetailsController>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            // color: Colors.yellow,
            height: 270,
            child: ListView.builder(
              itemCount: ImageHelper.productImages.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    controller.isLoadMore.value = false;
                    controller.tabIndex.value = 0;
                    controller.rating.value = 0;
                    controller.productQuantityCount.value = 1;
                    Get.off(
                            () => ProductDetailsScreen(
                                  productTitle: ImageHelper.productName[index],
                                  price: ImageHelper.productPrice[index],
                                  image: ImageHelper.productImages[index],
                                ),
                            preventDuplicates: false)
                        ?.whenComplete(() => controller.tabIndex.value = 0);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: ColorHelper.lightGrey.withOpacity(0.5),
                    ),
                    margin: const EdgeInsets.only(right: 10),
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CachedNetworkImage(
                          imageUrl: ImageHelper.productImages[index],
                          imageBuilder: (context, imageProvider) => Container(
                            height: 170,
                            margin: const EdgeInsets.only(bottom: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: imageProvider, fit: BoxFit.cover)),
                          ),
                          placeholder: (context, url) => SizedBox(
                              height: 150,
                              child: Center(
                                  child: Image(
                                image: AssetHelper.loadingGifRed,
                                width: 30,
                              ))),
                          errorWidget: (context, url, error) => SizedBox(
                              height: 150,
                              width: Get.width / 3.1,
                              child: Image(image: AssetHelper.smmartLifeLogo)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 5),
                          alignment: Alignment.centerLeft,
                          child: const RatingIndicator(ratings: 2, size: 14),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            '150 reviews',
                            style: TextStyle(
                                fontSize: 12, color: ColorHelper.silver),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                            padding: const EdgeInsets.only(left: 5),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${ImageHelper.productName[index]} SMMART LIFE',
                              style: const TextStyle(
                                  fontFamily: FontHelper.segoeuiRegular,
                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 13),
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                            padding: const EdgeInsets.only(left: 5),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '₹${ImageHelper.productPrice[index]}',
                              style: const TextStyle(
                                  fontFamily: FontHelper.segoeuiRegular,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            )),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

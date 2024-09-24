import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../App Helper/Test Helper/image_helper.dart';
import '../../../../../App Helper/asset_helper.dart';
import '../../../../../App Helper/color_helper.dart';
import '../../../../../App Helper/font_helper.dart';
import '../../../../../Widgets/Rating Indicator/rating_indicator.dart';
import '../../../Product Details Screen/product_details_screen.dart';
import 'Widget/category_screen_appbar.dart';

class CategoryDetailScreen extends StatelessWidget {
  final String name;
  final Color clr;
  const CategoryDetailScreen(
      {super.key, required this.name, required this.clr});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: categoryScreenAppbar(name, clr),
      body: Container(
        width: Get.width,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
            color: Colors.white),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                child: GridView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 230,
                    ),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: ImageHelper.productImages.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Get.to(() => ProductDetailsScreen(
                                productTitle: ImageHelper.productName[index],
                                price: ImageHelper.productPrice[index],
                                image: ImageHelper.productImages[index],
                              ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: ColorHelper.lightGrey.withOpacity(0.5),
                          ),
                          width: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CachedNetworkImage(
                                imageUrl: ImageHelper.productImages[index],
                                imageBuilder: (context, imageProvider) =>
                                    Container(
                                  height: 150,
                                  margin: const EdgeInsets.only(bottom: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color: ColorHelper.silver
                                              .withOpacity(0.5)),
                                      image: DecorationImage(
                                          image: imageProvider,
                                          fit: BoxFit.cover)),
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
                                    child: Image(
                                        image: AssetHelper.smmartLifeLogo)),
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 5),
                                alignment: Alignment.centerLeft,
                                child:
                                    const RatingIndicator(ratings: 2, size: 12),
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 5),
                                alignment: Alignment.centerLeft,
                                child: const Text(
                                  '150 reviews',
                                  style: TextStyle(
                                      fontSize: 10, color: ColorHelper.silver),
                                ),
                              ),
                              Container(
                                  padding: const EdgeInsets.only(left: 5),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '${ImageHelper.productName[index]}',
                                    style: const TextStyle(
                                        fontFamily: FontHelper.segoeuiRegular,
                                        fontSize: 12),
                                  )),
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
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

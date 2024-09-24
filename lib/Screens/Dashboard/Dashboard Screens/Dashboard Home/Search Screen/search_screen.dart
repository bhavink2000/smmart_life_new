import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/App%20Helper/Test%20Helper/image_helper.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Home/Widget/search_field.dart';
import 'package:smmart_life_new/Widgets/Buttons/rounded_button.dart';

import '../../../../../App Helper/asset_helper.dart';
import '../../../../../App Helper/color_helper.dart';
import '../../../../../App Helper/font_helper.dart';
import '../../../../../Widgets/Rating Indicator/rating_indicator.dart';
import '../../../Product Details Screen/product_details_screen.dart';
import '../../../Widget/Drawer/Controller/search_controller.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  final controller = Get.put(SearchScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: Get.width,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
              color: Colors.white),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const ImageIcon(
                            AssetImage('assets/images/back.png'))),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: SearchFieldHome(
                          controller: controller.searchController,
                          prifix: const Icon(Icons.search),
                          hint: 'Search',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'Find your Organic Oil',
                  style: TextStyle(
                    fontFamily: FontHelper.avenirMedium,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Search through more than 100+ products',
                  style: TextStyle(
                      fontFamily: FontHelper.avenirMedium,
                      fontSize: 10,
                      letterSpacing: -0.5,
                      color: ColorHelper.doveGray.withOpacity(0.8)),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Popular Products',
                      style: TextStyle(
                          fontFamily: FontHelper.avenirMedium,
                          fontSize: 16,
                          letterSpacing: -0.5),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  child: GridView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
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
                            margin: const EdgeInsets.only(bottom: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: ColorHelper.lightGrey.withOpacity(0.5),
                            ),
                            // color: Colors.red,
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
                                  errorWidget: (context, url, error) =>
                                      SizedBox(
                                          height: 150,
                                          width: Get.width / 3.1,
                                          child: Image(
                                              image:
                                                  AssetHelper.smmartLifeLogo)),
                                )
                                /*Container(
                                  height: 150,
                                  margin: const EdgeInsets.only(bottom: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color:
                                          ColorHelper.Silver.withOpacity(0.5)),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              ImageHelper.productImages[index]),
                                          fit: BoxFit.cover)),
                                )*/
                                ,
                                Container(
                                  padding: const EdgeInsets.only(left: 5),
                                  alignment: Alignment.centerLeft,
                                  child: const RatingIndicator(
                                      ratings: 2, size: 12),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 5),
                                  alignment: Alignment.centerLeft,
                                  child: const Text(
                                    '150 reviews',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: ColorHelper.silver),
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
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        height: 40,
        margin: const EdgeInsets.only(bottom: 10),
        child: RoundedButton(
          btnLabel: 'SEARCH',
          btnColor: ColorHelper.brown,
          btnOnTap: () {},
          fontSize: 12,
        ),
      ),
    );
  }
}

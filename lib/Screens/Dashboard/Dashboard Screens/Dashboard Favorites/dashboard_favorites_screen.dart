import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/App%20Helper/Test%20Helper/image_helper.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Favorites/Widget/dash_favorites_appbar.dart';
import 'package:smmart_life_new/Screens/Dashboard/Product%20Details%20Screen/product_details_screen.dart';
import '../../../../App Helper/asset_helper.dart';
import '../../../../App Helper/color_helper.dart';
import '../../../../App Helper/font_helper.dart';
import '../../../../Widgets/Rating Indicator/rating_indicator.dart';

class DashboardFavoritesScreen extends StatelessWidget {
  const DashboardFavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: dashFavoritesAppBar(),
      body: Container(
        width: Get.width,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(25)),
          color: ColorHelper.silver.withOpacity(0.2),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: ImageHelper.productImages.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(() => ProductDetailsScreen(
                            image: ImageHelper.productImages[index],
                            price: ImageHelper.productPrice[index],
                            productTitle: ImageHelper.productName[index],
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CachedNetworkImage(
                                  imageUrl: ImageHelper.productImages[index],
                                  imageBuilder: (context, imageProvider) =>
                                      Container(
                                    margin: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                    ),
                                    child: Image(
                                      image: imageProvider,
                                      height: 80,
                                      fit: BoxFit.cover,
                                    ),
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
                                          height: 80,
                                          width: 200,
                                          child: Image(
                                              image:
                                                  AssetHelper.smmartLifeLogo)),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('${ImageHelper.productName[index]}',
                                        style: const TextStyle(
                                            fontFamily:
                                                FontHelper.segoeuiRegular,
                                            fontSize: 14)),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Row(
                                      children: [
                                        RatingIndicator(
                                          size: 14,
                                          ratings: 4,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '150 reviews',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: ColorHelper.silver),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                            '₹${ImageHelper.productPrice[index]}',
                                            style: const TextStyle(
                                                fontFamily:
                                                    FontHelper.segoeuiRegular,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600))
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 0.0, bottom: 10, top: 5),
                              child: Container(
                                padding: const EdgeInsets.only(top: 10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            color:
                                                ColorHelper.silver.withOpacity(
                                                    0.5)))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: const Text(
                                        'Add to cart',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontFamily: FontHelper.avenirMedium,
                                            fontSize: 12),
                                      ),
                                    ),
                                    Container(
                                      width: 1,
                                      height: 20,
                                      color:
                                          ColorHelper.silver.withOpacity(0.5),
                                    ),
                                    Container(
                                      height: 30,
                                      width: 145,
                                      alignment: Alignment.center,
                                      child: const Center(
                                          child: Text(
                                        'Remove from Wishlist',
                                        style: TextStyle(
                                            fontFamily: FontHelper.avenirMedium,
                                            fontSize: 12,
                                            color: Colors.black54),
                                      )),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}

/// Old Code
// Container(
// alignment: Alignment.center,
// child: GridView.builder(
// padding: const EdgeInsets.symmetric(horizontal: 10),
// gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 3,
// crossAxisSpacing: 10,
// mainAxisExtent: 225,
// ),
// physics: const NeverScrollableScrollPhysics(),
// shrinkWrap: true,
// itemCount: ImageHelper.productImages.length,
// itemBuilder: (context, index) {
// return GestureDetector(
// onTap: () {
// Get.to(() => ProductDetailsScreen(
// productTitle: ImageHelper.productName[index],
// price: ImageHelper.productPrice[index],
// image: ImageHelper.productImages[index],
// ));
// },
// child: SizedBox(
// // color: Colors.red,
// width: 200,
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Stack(
// children: [
// Container(
// height: 150,
// margin: const EdgeInsets.only(bottom: 5),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(5),
// border: Border.all(
// color:
// ColorHelper.Silver.withOpacity(0.5)),
// image: DecorationImage(
// image: NetworkImage(
// ImageHelper.productImages[index]),
// fit: BoxFit.cover)),
// ),
// Positioned(
// bottom: 10,
// left: 5,
// child: CircleAvatar(
// backgroundColor:
// ColorHelper.lightBrown.withOpacity(0.5),
// radius: 15,
// child: const ImageIcon(
// AssetImage(
// 'assets/images/Product Page/Icons-icon-bookmark-filled@3x.png'),
// size: 15,
// color: ColorHelper.Grenadier),
// ),
// )
// ],
// ),
// const Align(
// alignment: Alignment.centerLeft,
// child: RatingIndicator(ratings: 2, size: 12),
// ),
// const Align(
// alignment: Alignment.centerLeft,
// child: Text(
// '150 reviews',
// style: TextStyle(
// fontSize: 10, color: ColorHelper.Silver),
// ),
// ),
// Align(
// alignment: Alignment.centerLeft,
// child: Text(
// '${ImageHelper.productName[index]}',
// style: const TextStyle(
// fontFamily: FontHelper.SegoeuiRegular,fontSize: 12),
// )),
//
// Align(
// alignment: Alignment.centerLeft,
// child: Text(
// '₹${ImageHelper.productPrice[index]}',
// style: const TextStyle(
// fontFamily: FontHelper.SegoeuiRegular,
// fontSize: 12,
// fontWeight: FontWeight.w600),
// )),
// ],
// ),
// ),
// );
// }),
// )

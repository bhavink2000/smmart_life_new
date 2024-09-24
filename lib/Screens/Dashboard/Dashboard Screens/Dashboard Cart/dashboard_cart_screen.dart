import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/App%20Helper/font_helper.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Cart/Process%20To%20Payment/Address/select_address_screen.dart';
import 'package:smmart_life_new/Widgets/Rating%20Indicator/rating_indicator.dart';
import '../../../../App Helper/Test Helper/image_helper.dart';
import '../../../../App Helper/asset_helper.dart';
import '../../../../App Helper/color_helper.dart';
import '../../Product Details Screen/product_details_screen.dart';
import 'Widget/dash_cart_appbar.dart';

class DashboardCartScreen extends StatelessWidget {
  const DashboardCartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: dashCartAppBar(),
      body: Container(
        width: Get.width,
        color: ColorHelper.silver.withOpacity(0.2),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: ImageHelper.productImages.length,
                itemBuilder: (context, index) {
                  return Padding(
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
                              InkWell(
                                onTap: () {
                                  Get.to(() => ProductDetailsScreen(
                                        image: ImageHelper.productImages[index],
                                        price: ImageHelper.productPrice[index],
                                        productTitle:
                                            ImageHelper.productName[index],
                                      ));
                                },
                                child: CachedNetworkImage(
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
                              ),
                              InkWell(
                                onTap: () {
                                  Get.to(() => ProductDetailsScreen(
                                        image: ImageHelper.productImages[index],
                                        price: ImageHelper.productPrice[index],
                                        productTitle:
                                            ImageHelper.productName[index],
                                      ));
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('${ImageHelper.productName[index]}',
                                        style: const TextStyle(
                                            fontFamily:
                                                FontHelper.segoeuiRegular,
                                            fontWeight: FontWeight.bold,
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
                                        const Text(
                                          '-40%',
                                          style: TextStyle(
                                              fontFamily:
                                                  FontHelper.segoeuiRegular,
                                              fontSize: 14,
                                              color: ColorHelper.brown,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
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
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, bottom: 10, top: 5),
                            child: Container(
                              padding: const EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(
                                  border: Border(
                                      top: BorderSide(
                                          color: ColorHelper.silver.withOpacity(
                                              0.5)))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                          height: 30,
                                          width: 40,
                                          alignment: Alignment.center,
                                          color: ColorHelper.silver.withOpacity(
                                              0.2),
                                          child: const Icon(Icons.remove,
                                              size: 14)),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        alignment: Alignment.center,
                                        color:
                                            ColorHelper.silver.withOpacity(0.2),
                                        child: const Text(
                                          '1',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        height: 30,
                                        width: 40,
                                        alignment: Alignment.center,
                                        color:
                                            ColorHelper.silver.withOpacity(0.2),
                                        child: const Icon(Icons.add, size: 14),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 1,
                                    // height: 30,
                                  ),
                                  Flexible(
                                    child: Material(
                                      color: Colors.white,
                                      child: InkWell(
                                        onTap: () {},
                                        child: Container(
                                          height: 30,
                                          alignment: Alignment.center,
                                          child: const Text(
                                            'Delete',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontFamily:
                                                    FontHelper.avenirMedium,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
              // payment details
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                // height: 200,
                width: Get.width,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(left: 15, top: 10, bottom: 5),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Price Details',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: FontHelper.avenirMedium),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                      child: const PriceDetailTile(
                        label: 'Price (3 items)',
                        value: '₹1456',
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                      child: const PriceDetailTile(
                        label: 'Discount',
                        value: '- ₹456',
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 15, right: 15, bottom: 0),
                      child: const PriceDetailTile(
                        label: 'Delivery Charges',
                        value: '₹160',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child:
                          Divider(color: ColorHelper.silver.withOpacity(0.5)),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 15, right: 15, bottom: 10, top: 5),
                      child: const PriceDetailTile(
                        label: 'Total Amount',
                        value: '₹1160',
                        isTotal: true,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                top: BorderSide(color: ColorHelper.silver.withOpacity(0.5)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text('₹1452',
                  style: TextStyle(
                      fontFamily: FontHelper.segoeuiRegular,
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => SelectAddressScreen());
              },
              child: Container(
                margin: const EdgeInsets.only(right: 15),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 7),
                decoration: BoxDecoration(
                    color: ColorHelper.grenadier,
                    borderRadius: BorderRadius.circular(5)),
                child: const Text(
                  'Place order',
                  style: TextStyle(
                      color: Colors.white,
                      // fontSize: 12,
                      fontFamily: FontHelper.segoeuiRegular),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PriceDetailTile extends StatelessWidget {
  final String? label, value;
  final bool? isTotal;
  const PriceDetailTile(
      {super.key, this.label, this.value, this.isTotal = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$label',
          style: TextStyle(
              fontWeight: isTotal! ? FontWeight.bold : null,
              fontFamily: FontHelper.avenirMedium),
        ),
        Text(
          '$value',
          style: TextStyle(
              fontWeight: isTotal! ? FontWeight.bold : null,
              fontFamily: FontHelper.avenirMedium),
        )
      ],
    );
  }
}

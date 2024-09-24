import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Widgets/Rating%20Indicator/rating_indicator.dart';

import '../../../../App Helper/color_helper.dart';
import '../../../../App Helper/font_helper.dart';
import '../Controller/product_details_controller.dart';

class ProductDetailsTabReview extends StatelessWidget {
  ProductDetailsTabReview({super.key});
  final controller = Get.put(ProductDetailsController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // height: 400,
          // color: Colors.red,
          padding: const EdgeInsets.symmetric(horizontal: 15,/* vertical: 10*/),
          child: Obx(
            ()=> ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
                itemCount: controller.isLoadMore.value ? 7 : 1,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                    color: ColorHelper.lightGrey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: ColorHelper.silver.withOpacity(0.5),
                              child: Image.asset(
                                  'assets/images/Product Page/Icons-Image@3x.png',
                                  height: 20),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Maulik Patel',style: TextStyle(
                                  fontFamily: FontHelper.arvinHavy,
                                ),),
                                Text('Developer',style: TextStyle(
                                  fontFamily: FontHelper.avenirBook,
                                  fontSize: 13
                                ),),
                                RatingIndicator(
                                  ratings: 3,
                                  size: 18,
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        const Text('Review is starts from here bhbakbdclh iuedcd eucoiu  uehcioauh'
                            ' euihiuah oiucajd aiuhdiuu iu ajfbb  quhhefiu ueo  UHUDH IOUEH'
                            ' QUHUH8UHISH uhiehvb hadbucdhbcba ahugduhbnb', style: TextStyle(
                          fontFamily: FontHelper.avenirBook,
                          letterSpacing: 0.5,
                          fontSize: 14
                        ),),
                        const SizedBox(height: 10,),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Container(
                        //       padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        //       decoration: BoxDecoration(
                        //         borderRadius: BorderRadius.circular(3),
                        //         color: ColorHelper.Silver.withOpacity(0.5)
                        //       ),
                        //       child: Text('Helpful?'),
                        //     ),
                        //     Container(
                        //       padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        //       decoration: BoxDecoration(
                        //           borderRadius: BorderRadius.circular(3),
                        //           // color: ColorHelper.Silver.withOpacity(0.5)
                        //       ),
                        //       child: Text('Report',style: TextStyle(color: Colors.red),),
                        //     ),
                        //   ],
                        // )
                      ],
                    ),
                  );
                }),
          ),
        ),
        Obx(
          ()=> controller.isLoadMore.value ? const SizedBox() : Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: (){
                  controller.isLoadMore.value = true ;
                },
                child: const Text(
                  'View More',
                    style: TextStyle(
                        color: ColorHelper.grenadier,
                        fontFamily: FontHelper.arvinHavy,
                        fontWeight: FontWeight.w600)
                ),
              ),
              const SizedBox(width: 20,)
            ],
          ),
        )
      ],
    );
  }
}

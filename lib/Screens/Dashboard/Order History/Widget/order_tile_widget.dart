import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Widgets/Rating%20Indicator/rating_indicator.dart';
import '../../../../App Helper/color_helper.dart';
import '../../../../App Helper/font_helper.dart';
import '../Order History Details/order_history_details.dart';

class OrderTileWidget extends StatelessWidget {
  final String? orderNo, placedOn, amount, status, items, image, productName;
  const OrderTileWidget(
      {super.key,
      this.orderNo,
      this.placedOn,
      this.amount,
      this.status,
      this.items,
      this.image,
      this.productName});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => OrderHistoryDetailsScreen(
              orderNo: orderNo,
              status: status,
              placedOn: placedOn,
              image: image,
            ));
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                bottom:
                    BorderSide(color: ColorHelper.silver.withOpacity(0.7)))),
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: Get.width / 5,
              height: 70,
              decoration: BoxDecoration(
                  // color: Colors.red,
                  image: DecorationImage(
                      image: NetworkImage(image!), fit: BoxFit.contain)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text(
                        productName!,
                        style: const TextStyle(
                            fontFamily: FontHelper.avenirMedium,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                      padding: const EdgeInsets.only(top: 5,bottom: 5),
                      child: const Text(
                        'Delivered on 1-Dec-2023',
                        style: TextStyle(
                            fontFamily: FontHelper.avenirBook, fontSize: 12),
                      )),
                  const RatingIndicator(size: 14,ratings: 3,)
                ],
              ),
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios_rounded),
            const SizedBox(
              width: 10,
            )
          ],
        ),
      ),
    );
  }
}

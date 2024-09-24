import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/App%20Helper/color_helper.dart';
import 'package:smmart_life_new/App%20Helper/font_helper.dart';
import 'package:smmart_life_new/Screens/Dashboard/Order%20Details/Widget/order_status_appbar.dart';

class OrderStatusScreen extends StatelessWidget {
  const OrderStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHelper.grenadier,
      appBar: orderStatusAppbar(),
      body: Card(
        color: ColorHelper.grenadier,
        margin: const EdgeInsets.all(0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: Get.width,
                    color: Colors.white,
                // decoration: const BoxDecoration(
                //     borderRadius:
                //     BorderRadius.vertical(top: Radius.circular(25)),
                // ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 50.0, top: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      OrderStatusProcessObject(
                        isCompleted: true,
                        label: 'Order Placed',
                        value: 'Your order #212423 was placed on 23th November 2023.',
                      ),
                      // SizedBox(height: 10,),
                      OrderStatusProcessObject(
                        isCompleted: true,
                        label: 'Processing',
                        value: 'Your order still needs to be processed by our store before sending it to you.',
                      ),
                      // SizedBox(height: 10,),
                      OrderStatusProcessObject(
                        label: 'Picked up by the courier',
                        value: 'your order has been picked up by one of our couriers and its on your way.',
                      ),
                      // SizedBox(height: 10,),
                      OrderStatusProcessObject(
                        label: 'Delivering',
                        value: 'The package is on your way. Make sure to be at the location to meet the courier.',
                      ),
                      // SizedBox(height: 10,),
                      OrderStatusProcessObject(
                        label: 'Delivered',
                        value: 'It seems like the package has arrived to you. Hope you are happy with it!',
                        isLast: true,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OrderStatusProcessObject extends StatelessWidget {
  final String? label, value ;
  final bool? isLast, isCompleted ;
  const OrderStatusProcessObject({super.key, this.label, this.value, this.isLast = false, this.isCompleted = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 16,
              backgroundColor:isCompleted! ? Colors.white : ColorHelper.silver,
              child: isCompleted! ? Image.asset(
                'assets/images/OrderStatusCheck-removebg-preview.png',color: ColorHelper.brown,
                // height: 80,
              ) : const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 15,
              ),
            ),
            isLast! ? Container() : Container(height: 60,width: 1,color: isCompleted! ? ColorHelper.brown : ColorHelper.silver,)
          ],
        ),
        const SizedBox(width: 20,),
        Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 3,),
            Text('$label',style: const TextStyle(fontFamily: FontHelper.segoeuiRegular,fontSize: 16,fontWeight: FontWeight.w600),),
            const SizedBox(height: 10,),
            SizedBox(width: 270,child: Text('$value',style: const TextStyle(fontFamily: FontHelper.avenirBook,fontSize: 12,color: ColorHelper.doveGray),))
          ],
        )
      ],
    );
  }
}


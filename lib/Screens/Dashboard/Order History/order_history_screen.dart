import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Screens/Dashboard/Order%20History/Widget/order_history_appbar.dart';
import 'package:smmart_life_new/Screens/Dashboard/Order%20History/Widget/order_tile_widget.dart';
import '../../../App Helper/Test Helper/image_helper.dart';
import '../../../App Helper/color_helper.dart';

class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHelper.brown,
      appBar: orderHistoryAppbar('order'),
      body: Container(
        height: double.infinity,
        width: Get.width,
            color: Colors.white,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(border: Border(top: BorderSide(color: ColorHelper.silver.withOpacity(0.7)))),
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: ImageHelper.productImages.length,
                  itemBuilder: (context, index){
                    return OrderTileWidget(
                      amount: '500',
                      items: '03',
                      placedOn: '1 March 2023',
                      orderNo: '13002',
                      status: 'Delivered',
                      productName: ImageHelper.productName[index],
                      image: ImageHelper.productImages[index],
                    ) ;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

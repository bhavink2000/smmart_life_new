import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/App%20Helper/Loading%20Helper/loading_helper.dart';
import 'package:smmart_life_new/App%20Helper/font_helper.dart';
import 'package:smmart_life_new/Screens/Dashboard/Order%20Details/Controller/order_details_controller.dart';
import 'package:smmart_life_new/Screens/Dashboard/Order%20Details/Widget/order_details_appbar.dart';
import 'package:smmart_life_new/Screens/Dashboard/Order%20Details/order_placed_screen.dart';
import 'package:smmart_life_new/Widgets/Buttons/rounded_button.dart';
import '../../../App Helper/color_helper.dart';

class OrderDetailsScreen extends StatelessWidget {
  OrderDetailsScreen({super.key});
  final controller = Get.put(OrderDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: orderDetailsAppbar(),
      body: Container(
        width: Get.width,
            color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'SHIPPING TO',
                          style: TextStyle(
                              color:
                                  ColorHelper.doveGray.withOpacity(0.8),
                              fontFamily: FontHelper.segoeuiRegular),
                        ),
                        const Text(
                          'Change',
                          style: TextStyle(
                              color: ColorHelper.grenadier,
                              fontFamily: FontHelper.segoeuiRegular),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      width: 250,
                      child: Text(
                        'Palladium, A/2-610, Corporate Rd, near Vodafone House,'
                        ' Makarba, Ahmedabad, Gujarat 380051',
                        style: TextStyle(
                            fontFamily: FontHelper.segoeuiRegular),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      color: ColorHelper.silver,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'PAY WITH CREDIT CARD',
                          style: TextStyle(
                              color:
                                  ColorHelper.doveGray.withOpacity(0.8),
                              fontFamily: FontHelper.segoeuiRegular),
                        ),
                        const Text(
                          'Change',
                          style: TextStyle(
                              color: ColorHelper.grenadier,
                              fontFamily: FontHelper.segoeuiRegular),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('XXXX - XXXX - XXXX - 1121'),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      color: ColorHelper.silver,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'ORDER DETAILS',
                      style: TextStyle(
                          color: ColorHelper.doveGray.withOpacity(0.8),
                          fontFamily: FontHelper.segoeuiRegular),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    /*Row(
                      children: [
                        Container(
                          height: 80,
                          width: 100,
                          child: Image.asset('assets/images/order_details_image.png'),
                        ),
                        SizedBox(width: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Item 1',style: TextStyle(fontFamily: FontHelper.AvenirMedium),),
                            Text('₹3600.00',style: TextStyle(fontFamily: FontHelper.AvenirMedium),)
                          ],
                        )
                      ],
                    ),*/
                    ListView.builder(
                      itemCount: 10,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 80,
                                width: 100,
                                child: Image.asset(
                                    'assets/images/order_details_image.png'),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Item 1',
                                    style: TextStyle(
                                        fontFamily:
                                            FontHelper.avenirMedium),
                                  ),
                                  Text(
                                    '₹3600.00',
                                    style: TextStyle(
                                        fontFamily:
                                            FontHelper.avenirMedium),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      color: ColorHelper.silver,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'SHIPPING METHOD',
                      style: TextStyle(
                          color: ColorHelper.doveGray.withOpacity(0.8),
                          fontFamily: FontHelper.segoeuiRegular),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Obx(
                      () => RadioListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: const Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Standard Shipping (10 days)',
                              style: TextStyle(
                                  fontFamily: FontHelper.segoeuiRegular,
                                  fontSize: 14),
                            ),
                            Text(
                              'FREE',
                              style: TextStyle(
                                  color: ColorHelper.grenadier,
                                  fontFamily: FontHelper.avenirMedium,
                                  fontSize: 14),
                            )
                          ],
                        ),
                        value: 'Standard',
                        onChanged: (val) {
                          controller.shippingMethod.value =
                              val.toString();
                          log(controller.shippingMethod.value);
                        },
                        groupValue: controller.shippingMethod.value,
                        activeColor: ColorHelper.grenadier,
                        materialTapTargetSize:
                            MaterialTapTargetSize.shrinkWrap,
                        visualDensity: const VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                            vertical: VisualDensity.minimumDensity),
                        // dense: true,
                      ),
                    ),
                    Obx(
                      () => RadioListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: const Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Express (4 days)',
                              style: TextStyle(
                                  fontFamily: FontHelper.segoeuiRegular,
                                  fontSize: 14),
                            ),
                            Text(
                              '₹60.00',
                              style: TextStyle(
                                  fontFamily: FontHelper.avenirMedium,
                                  fontSize: 14),
                            )
                          ],
                        ),
                        value: 'Express',
                        onChanged: (val) {
                          controller.shippingMethod.value =
                              val.toString();
                          log(controller.shippingMethod.value);
                        },
                        groupValue: controller.shippingMethod.value,
                        activeColor: ColorHelper.grenadier,
                        materialTapTargetSize:
                            MaterialTapTargetSize.shrinkWrap,
                        visualDensity: const VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                            vertical: VisualDensity.minimumDensity),
                        // dense: true,
                      ),
                    ),
                    Obx(
                      () => RadioListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: const Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Superman Delivery (1 days)',
                              style: TextStyle(
                                  fontFamily: FontHelper.segoeuiRegular,
                                  fontSize: 14),
                            ),
                            Text(
                              '₹120.00',
                              style: TextStyle(
                                  fontFamily: FontHelper.avenirMedium,
                                  fontSize: 14),
                            )
                          ],
                        ),
                        value: 'Superman',
                        onChanged: (val) {
                          controller.shippingMethod.value =
                              val.toString();
                          log(controller.shippingMethod.value);
                        },
                        groupValue: controller.shippingMethod.value,
                        activeColor: ColorHelper.grenadier,
                        materialTapTargetSize:
                            MaterialTapTargetSize.shrinkWrap,
                        visualDensity: const VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                            vertical: VisualDensity.minimumDensity),
                        // dense: true,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      color: ColorHelper.silver,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'VOUCHERS & PROMOTIONAL CODES',
                      style: TextStyle(
                          color: ColorHelper.doveGray.withOpacity(0.8),
                          fontFamily: FontHelper.segoeuiRegular),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: TextFormField(
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.circular(50)),
                                suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.done,
                                      color: ColorHelper.grenadier,
                                    ))),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 15),
                          decoration: BoxDecoration(
                              color: ColorHelper.grenadier,
                              borderRadius: BorderRadius.circular(50)),
                          child: const Text('APPLIED',
                              style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 1.5,
                                  fontFamily: FontHelper.avenirBook)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                // height: 100,
                width: Get.width,
                decoration: const BoxDecoration(
                    color: ColorHelper.grenadier,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const OrderDetailsPriceRow(
                      label: 'SUBTOTAL',
                      value: '₹8430.00',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const OrderDetailsPriceRow(
                      label: 'SHIPPING',
                      value: '₹60.00',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const OrderDetailsPriceRow(
                      label: 'PROMOTION APPLIED',
                      value: '₹-190.00',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const OrderDetailsPriceRow(
                        label: 'TOTAL TO PAY',
                        value: '₹8300.00',
                        isTotal: true),
                    const SizedBox(height: 20,),
                    Align(
                      alignment: Alignment.center,
                      child: RoundedButton(
                        btnLabel: 'PLACE ORDER',
                        btnColor: Colors.white,
                        textColor: ColorHelper.black,
                        fontSize: 16,
                        btnOnTap: (){
                          Get.to(()=>const OrderPlacedScreen());
                          LoadingHelper.redLoading();
                          Timer(const Duration(seconds: 4), () {LoadingHelper.onLoadingExit();});
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OrderDetailsPriceRow extends StatelessWidget {
  final String? label, value;
  final bool? isTotal;
  const OrderDetailsPriceRow(
      {super.key, this.label, this.value, this.isTotal = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$label',
          style: isTotal!
              ? const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: FontHelper.avenirMedium)
              : const TextStyle(
                  color: Colors.white,
                  fontFamily: FontHelper.avenirMedium,
                  fontSize: 12),
        ),
        Text(
          '$value',
          style: isTotal!
              ? const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: FontHelper.arvinHavy,
                  fontWeight: FontWeight.bold)
              : const TextStyle(
                  color: Colors.white,
                  fontFamily: FontHelper.arvinHavy,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

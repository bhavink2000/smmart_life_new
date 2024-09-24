import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/App%20Helper/color_helper.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Cart/Process%20To%20Payment/Payment/Controller/select_payment_method_controller.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Cart/Process%20To%20Payment/Payment/Widget/select_payment_method_appbar.dart';
import 'package:smmart_life_new/Screens/Dashboard/Order%20Details/order_placed_screen.dart';
import '../../../../../../App Helper/font_helper.dart';
import '../../dashboard_cart_screen.dart';

class SelectPaymentMethodScreen extends StatelessWidget {
  SelectPaymentMethodScreen({super.key});
  final controller = Get.put(SelectPaymentMethodController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: selectPaymentMethodAppbar(),
      body: Container(
        height: double.infinity,
        width: Get.width,
        color: ColorHelper.silver.withOpacity(0.2),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                width: Get.width,
                margin: EdgeInsets.zero,
                color: Colors.white,
                child: Obx(
                  () => Column(
                    children: [
                      RadioListTile(
                        value: 'UPI',
                        groupValue: controller.paymentMethod.value,
                        onChanged: (val) {
                          controller.paymentMethod.value = val!;
                        },
                        activeColor: ColorHelper.grenadier,
                        title: const Text('UPI'),
                      ),
                      controller.paymentMethod.value == 'UPI'
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: Get.width,
                                  margin: EdgeInsets.zero,
                                  color: Colors.white,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 15, bottom: 5),
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                          'Enter Your UPI Id',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontFamily:
                                                  FontHelper.avenirMedium),
                                        ),
                                      ),
                                      Container(
                                          margin: const EdgeInsets.only(
                                              left: 15, top: 5, bottom: 10),
                                          alignment: Alignment.centerLeft,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              const SizedBox(
                                                width: 230,
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      hintText: 'UPI Id',
                                                      enabledBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: ColorHelper
                                                                  .silver)),
                                                      disabledBorder:
                                                          OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: ColorHelper
                                                                      .silver)),
                                                      focusedBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: ColorHelper
                                                                  .silver)),
                                                      contentPadding:
                                                          EdgeInsets.only(
                                                              left: 10)),
                                                ),
                                              ),
                                              const Spacer(),
                                              InkWell(
                                                onTap: () {},
                                                child: Container(
                                                  width: 140,
                                                  height: 48,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          ColorHelper.grenadier,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  child: const Text(
                                                    'Okay',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 15,
                                              )
                                            ],
                                          )),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 1,
                                      width: Get.width / 3,
                                      color:
                                          ColorHelper.silver.withOpacity(0.5),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    const Text('or'),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      height: 1,
                                      width: Get.width / 3,
                                      color:
                                          ColorHelper.silver.withOpacity(0.5),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: Get.width,
                                  margin: EdgeInsets.zero,
                                  color: Colors.white,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 15, top: 5, bottom: 10),
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                          'Scan QR Code',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontFamily:
                                                  FontHelper.avenirMedium),
                                        ),
                                      ),
                                      Container(
                                        width: Get.width,
                                        alignment: Alignment.center,
                                        margin:
                                            const EdgeInsets.only(bottom: 10),
                                        child: Image.asset(
                                            'assets/images/More/istockphoto-1095468748-1024x1024.jpg',
                                            height: 200),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          : Container(),
                      Divider(
                        color: ColorHelper.silver.withOpacity(0.4),
                      ),
                      RadioListTile(
                        value: 'Credit / Debit / ATM Card',
                        groupValue: controller.paymentMethod.value,
                        onChanged: (val) {
                          controller.paymentMethod.value = val!;
                        },
                        activeColor: ColorHelper.grenadier,
                        title: const Text('Credit / Debit / ATM Card'),
                      ),
                      controller.paymentMethod.value ==
                              'Credit / Debit / ATM Card'
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: Get.width,
                                  margin: EdgeInsets.zero,
                                  color: Colors.white,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 15, bottom: 5),
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                          'Enter Your Card Details',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontFamily:
                                                  FontHelper.avenirMedium),
                                        ),
                                      ),
                                      Container(
                                          margin: const EdgeInsets.only(
                                              left: 15,
                                              top: 5,
                                              bottom: 10,
                                              right: 15),
                                          alignment: Alignment.centerLeft,
                                          child: Column(
                                            // mainAxisAlignment: MainAxisAlignment.start,
                                            // crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              const InputFieldForPayment(
                                                  label: 'Card Holder Name'),
                                              const InputFieldForPayment(
                                                  label: 'Card Number',
                                                  keyboardType:
                                                      TextInputType.number),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  SizedBox(
                                                    width: Get.width / 2.5,
                                                    child:
                                                        const InputFieldForPayment(
                                                            label:
                                                                'Expiry Date',
                                                            keyboardType:
                                                                TextInputType
                                                                    .number),
                                                  ),
                                                  SizedBox(
                                                    width: Get.width / 2.5,
                                                    child:
                                                        const InputFieldForPayment(
                                                            label: 'CVV',
                                                            keyboardType:
                                                                TextInputType
                                                                    .number),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              InkWell(
                                                onTap: () {},
                                                child: Container(
                                                  width: 140,
                                                  height: 35,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          ColorHelper.grenadier,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  child: const Text(
                                                    'Apply',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          : Container(),
                      Divider(
                        color: ColorHelper.silver.withOpacity(0.4),
                      ),
                      RadioListTile(
                        value: 'Net Banking',
                        groupValue: controller.paymentMethod.value,
                        onChanged: (val) {
                          controller.paymentMethod.value = val!;
                        },
                        activeColor: ColorHelper.grenadier,
                        title: const Text('Net Banking'),
                      ),
                      Divider(
                        color: ColorHelper.silver.withOpacity(0.4),
                      ),
                      RadioListTile(
                        value: 'Cash on Delivery',
                        groupValue: controller.paymentMethod.value,
                        onChanged: (val) {
                          controller.paymentMethod.value = val!;
                        },
                        activeColor: ColorHelper.grenadier,
                        title: const Text('Cash on Delivery'),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: Get.width,
                margin: EdgeInsets.zero,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(left: 15, top: 10, bottom: 5),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Apply Voucher',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: FontHelper.avenirMedium),
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(
                            left: 15, top: 5, bottom: 10, right: 15),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 40,
                              width: 210,
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: 'Promo Code',
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: ColorHelper.silver)),
                                    disabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: ColorHelper.silver)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: ColorHelper.silver)),
                                    contentPadding: EdgeInsets.only(left: 10)),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 140,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: ColorHelper.grenadier,
                                    borderRadius: BorderRadius.circular(5)),
                                child: const Text(
                                  'Apply',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ),
                            // const SizedBox(width: 15,)
                          ],
                        )),
                  ],
                ),
              ),
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
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 50,
        alignment: Alignment.centerRight,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                top: BorderSide(color: ColorHelper.silver.withOpacity(0.5)))),
        child: GestureDetector(
          onTap: () {
            Get.to(() => const OrderPlacedScreen());
          },
          child: Container(
            margin: const EdgeInsets.only(right: 15),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 7),
            decoration: BoxDecoration(
                color: ColorHelper.grenadier,
                borderRadius: BorderRadius.circular(5)),
            child: const Text(
              'Place Order',
              style: TextStyle(
                  color: Colors.white,
                  // fontSize: 12,
                  fontFamily: FontHelper.segoeuiRegular),
            ),
          ),
        ),
      ),
    );
  }
}

class InputFieldForPayment extends StatelessWidget {
  final String? label;
  final TextInputType? keyboardType;
  const InputFieldForPayment({super.key, this.label, this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 5),
        label: Text('$label'),
        labelStyle: const TextStyle(color: ColorHelper.black, fontSize: 14),
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: ColorHelper.silver.withOpacity(0.5))),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: ColorHelper.silver.withOpacity(0.5))),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: ColorHelper.silver.withOpacity(0.5))),
        disabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: ColorHelper.silver.withOpacity(0.5))),
      ),
    );
  }
}

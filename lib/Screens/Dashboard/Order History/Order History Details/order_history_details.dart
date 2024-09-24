import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Screens/Dashboard/Order%20History/Widget/order_history_appbar.dart';
import '../../../../App Helper/color_helper.dart';
import '../../../../App Helper/font_helper.dart';
import '../../Order Details/order_status_screen.dart';

class OrderHistoryDetailsScreen extends StatelessWidget {
  final String? orderNo,
      placedOn,
      itemsSubtotal,
      shipping,
      total,
      promotionApplies,
      grandTotal,
      paymentMethod,
      address,
      image,
      status;
  const OrderHistoryDetailsScreen(
      {super.key,
      this.orderNo,
      this.placedOn,
      this.itemsSubtotal,
      this.shipping,
      this.total,
      this.promotionApplies,
      this.grandTotal,
      this.paymentMethod,
      this.address,
      this.status,
      this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHelper.brown,
      appBar: orderHistoryAppbar('history'),
      body: Container(
        width: Get.width,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ORDER #$orderNo',
                        style:
                            const TextStyle(fontFamily: FontHelper.avenirBook),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Placed On :  $placedOn',
                        style: const TextStyle(fontSize: 13),
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => const OrderStatusScreen());
                    },
                    child: Container(
                      // margin: const EdgeInsets.only(right: 15),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.5))),
                      child: const Text(
                        'Track order',
                        style: TextStyle(
                            color: Colors.grey,
                            // fontSize: 12,
                            fontFamily: FontHelper.segoeuiRegular),
                      ),
                    ),
                  )
                ],
              ),
              Divider(color: ColorHelper.silver.withOpacity(0.5)),
              const SizedBox(height: 5),
              const Text(
                'Order Summary',
                style: TextStyle(
                    fontFamily: FontHelper.avenirMedium,
                    color: ColorHelper.brown),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      OrderDetailsCustomWidgetRow(
                        label: 'Item(s) Subtotal',
                        value: '1520',
                      ),
                      OrderDetailsCustomWidgetRow(
                        label: 'Shipping',
                        value: '80',
                      ),
                      OrderDetailsCustomWidgetRow(
                        label: 'Total',
                        value: '1600',
                      ),
                      OrderDetailsCustomWidgetRow(
                        label: 'Promotion Applied',
                        value: '-150',
                      ),
                      OrderDetailsCustomWidgetRow(
                        label: 'Grand Total',
                        value: '1450',
                      ),
                    ],
                  ),
                  Container(
                    height: 130,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(image!), fit: BoxFit.fitHeight),
                        borderRadius: BorderRadius.circular(5)),
                  )
                ],
              ),
              const SizedBox(height: 5),
              Divider(
                color: ColorHelper.silver.withOpacity(0.5),
              ),
              const SizedBox(height: 5),
              const Text(
                'Payment Method',
                style: TextStyle(
                    fontFamily: FontHelper.avenirMedium,
                    color: ColorHelper.brown),
              ),
              const SizedBox(height: 10),
              const Text(
                'Visa ******3302',
                style: TextStyle(fontFamily: FontHelper.avenirMedium),
              ),
              const SizedBox(height: 5),
              Divider(
                color: ColorHelper.silver.withOpacity(0.5),
              ),
              const SizedBox(height: 5),
              const Text(
                'Shipping Address',
                style: TextStyle(
                    fontFamily: FontHelper.avenirMedium,
                    color: ColorHelper.brown),
              ),
              const SizedBox(height: 10),
              const SizedBox(
                  width: 200,
                  child: Text(
                    'D-501 Pramukh Park, Near Dholakiya Park,'
                    ' Navrangpura, Ahmedabad, Gujarat 380013, India',
                    style: TextStyle(fontFamily: FontHelper.avenirMedium),
                  )),
              const SizedBox(height: 10),
              const Text(
                'Status',
                style: TextStyle(
                    fontFamily: FontHelper.avenirMedium,
                    color: ColorHelper.brown),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '$status',
                    style: const TextStyle(fontFamily: FontHelper.avenirMedium),
                  ),
                  const Text(
                    'Download Invoice',
                    style: TextStyle(
                        fontFamily: FontHelper.avenirMedium,
                        color: ColorHelper.brown),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Divider(color: ColorHelper.silver.withOpacity(0.5)),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(color: ColorHelper.silver, blurRadius: 3)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Virgin Coconut Oil (Cold Pressed) 500ML',
                          style: TextStyle(fontSize: 13),
                        ),
                        const SizedBox(width: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: 100,
                                child: Image.asset(
                                    'assets/images/Order History – 2/OliveOil-bc8d7aa@3x.png')),
                            const SizedBox(width: 20),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('₹800.00',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: FontHelper.avenirMedium)),
                                const SizedBox(
                                    width: 170,
                                    child: Text(
                                        'Return window closed on 21-jan-2023',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: FontHelper.arvinHavy))),
                                const Divider(height: 10),
                                const SizedBox(
                                    width: 170,
                                    child: Row(
                                      children: [
                                        ImageIcon(
                                            AssetImage(
                                                'assets/images/Order History – 2/star@3x.png'),
                                            size: 12,
                                            color: ColorHelper.brown),
                                        Text(
                                          ' Write a product review',
                                          style: TextStyle(
                                              color: ColorHelper.brown,
                                              fontSize: 12,
                                              fontFamily:
                                                  FontHelper.avenirMedium),
                                        ),
                                      ],
                                    )),
                                const Divider(height: 10),
                                Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 3),
                                    decoration: BoxDecoration(
                                        color: ColorHelper.brown,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: const Text('ORDER AGAIN',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white))),
                                const SizedBox(height: 10)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

class OrderDetailsCustomWidgetRow extends StatelessWidget {
  final String? label, value;
  const OrderDetailsCustomWidgetRow({super.key, this.label, this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 150,
          margin: const EdgeInsets.only(bottom: 5),
          child: Text(
            '$label',
            style: const TextStyle(fontFamily: FontHelper.avenirMedium),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Text(':'),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 70,
          child: Text(
            '$value',
            style: const TextStyle(fontFamily: FontHelper.avenirMedium),
          ),
        ),
      ],
    );
  }
}

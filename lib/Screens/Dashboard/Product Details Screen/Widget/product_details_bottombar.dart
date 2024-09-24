import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import '../../../../App Helper/color_helper.dart';
import '../../../../App Helper/font_helper.dart';
import 'package:http/http.dart' as http;

class ProductDetailsBottomBar extends StatelessWidget {
  final String? imageUrl, price, name;
  const ProductDetailsBottomBar(
      {super.key, this.imageUrl, this.price, this.name});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      height: 50,
      color: Colors.white,
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Container(
        width: Get.width ,
        margin: const EdgeInsets.only(top: 5,bottom: 5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: ColorHelper.grenadier,
            borderRadius: BorderRadius.circular(5)),
        child: const Text('ADD TO CART',
            style: TextStyle(
                fontFamily: FontHelper.avenirBook,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
      ),
    );
  }

  void onShare(imageUrl, name, price) async {
    Directory directory = Directory('/storage/emulated/0/Download');
    final url = Uri.parse(imageUrl!);
    final response = await http.get(url);
    await File('${directory.path}/$name.png').writeAsBytes(response.bodyBytes);

    await Share.shareXFiles(
      [XFile('${directory.path}/$name.png')],
      text: 'Name :- $name \nPrice :- $price',
    );
  }
}

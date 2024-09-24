import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../App Helper/font_helper.dart';
import '../Category Detail Screen/category_detail_screen.dart';

class CategoriesTile extends StatelessWidget {
  final String? title, imageAddress;
  final Color? clr;
  const CategoriesTile({super.key, this.title, this.imageAddress, this.clr});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          Get.to(() => CategoryDetailScreen(
                name: title!,
                clr: clr!,
              ));
        },
        child: Container(
          height: 90,
          width: 100,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 60,
                width: 100,
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    color: clr, borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Image.asset(
                  imageAddress!,
                  width: 45,
                )),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '$title',
                style: const TextStyle(
                    fontSize: 12,
                    fontFamily: FontHelper.avenirMedium,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Categories%20Screen/Widget/dash_categories_appbar.dart';
import '../../../../App Helper/Test Helper/image_helper.dart';
import '../../../../App Helper/font_helper.dart';
import '../Dashboard Home/Category Detail Screen/category_detail_screen.dart';

class DashboardCategoriesScreen extends StatelessWidget {
  const DashboardCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: dashCategoriesAppbar(),
        body: Container(
          color: Colors.white,
          height: Get.height,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: GridView.builder(
              itemCount: 8,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisExtent: 100,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10),
              itemBuilder: (context, index) {
                return InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    Get.to(() => CategoryDetailScreen(
                          name: ImageHelper.categoryNameList[
                              index % ImageHelper.categoryNameList.length],
                          clr: ImageHelper.categoryColorList[
                              index % ImageHelper.categoryColorList.length],
                        ));
                  },
                  child: Container(
                    height: 90,
                    width: 100,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 60,
                          width: 100,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              color: ImageHelper.categoryColorList[
                                  index % ImageHelper.categoryColorList.length],
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Image.asset(
                            ImageHelper.categoryImageList[
                                index % ImageHelper.categoryImageList.length],
                            width: 45,
                          )),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          '${ImageHelper.categoryNameList[index % ImageHelper.categoryNameList.length]}',
                          style: const TextStyle(
                              fontSize: 12,
                              fontFamily: FontHelper.avenirMedium,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ));
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smmart_life_new/App%20Helper/Test%20Helper/image_helper.dart';
import 'package:smmart_life_new/App%20Helper/color_helper.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Home/Controller/dashboard_home_controller.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Home/Widget/categories_tile.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Home/Widget/dashboard_home_appbar.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Home/Widget/recomanded_products_tile.dart';
import 'package:smmart_life_new/Screens/Dashboard/Dashboard%20Screens/Dashboard%20Home/Widget/search_field.dart';

import '../../../../App Helper/asset_helper.dart';
import '../../../../App Helper/font_helper.dart';
import 'Search Screen/search_screen.dart';
import 'Widget/highest_bv_point_products.dart';

class DashboardHomeScreen extends StatelessWidget {
  DashboardHomeScreen({super.key});
  final controller = Get.put(DashboardHomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: dashHomeAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: SearchFieldHome(
                prifix: const Icon(Icons.search),
                hint: 'Search',
                isReadOnly: true,
                onTap: () {
                  Get.to(() => SearchScreen(),
                      transition: Transition.rightToLeftWithFade);
                },
              ),
            ),
            const SizedBox(height: 5),
            CarouselSlider(
              options: CarouselOptions(
                  height: 150,
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(seconds: 2),
                  viewportFraction: 1),
              items: ImageHelper.images.map((e) {
                return Container(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  margin: const EdgeInsets.symmetric(horizontal: 1),
                  width: Get.width,
                  // color: ColorHelper.lightBrown,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/More/slider_bg.png'),
                          fit: BoxFit.cover)),
                  child: Image.asset(
                    e,
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 10),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: const Text(
                'Categories',
                style: TextStyle(
                    fontFamily: FontHelper.avenirMedium,
                    fontSize: 16,
                    letterSpacing: -0.5),
              ),
            ),
            const SizedBox(height: 10),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 15),
                  CategoriesTile(
                      title: 'Health Care',
                      imageAddress: 'assets/images/Categories/icon_1.png',
                      clr: ColorHelper.healthCareCard),
                  CategoriesTile(
                      title: 'Skin Care',
                      imageAddress: 'assets/images/Categories/icon_2.png',
                      clr: ColorHelper.skincareCard),
                  CategoriesTile(
                      title: 'Hair Care',
                      imageAddress: 'assets/images/Categories/icon_3.png',
                      clr: ColorHelper.haircareCard),
                  CategoriesTile(
                      title: 'Face Skin',
                      imageAddress: 'assets/images/Categories/icon_4.png',
                      clr: ColorHelper.faceSkinCard),
                  CategoriesTile(
                      title: 'Blusher',
                      imageAddress: 'assets/images/Categories/icon_5.png',
                      clr: ColorHelper.blusherCard),
                  CategoriesTile(
                      title: 'Natural',
                      imageAddress: 'assets/images/Categories/icon_6.png',
                      clr: ColorHelper.naturalCard),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: const Text(
                'Offers',
                style: TextStyle(
                    fontFamily: FontHelper.avenirMedium,
                    fontSize: 16,
                    letterSpacing: -0.5),
              ),
            ),
            const SizedBox(height: 5),
            Container(
                height: 150,
                width: Get.width,
                padding: const EdgeInsets.only(left: 5),
                color: ColorHelper.silver.withOpacity(0.2),
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: ImageHelper.offerList.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return CachedNetworkImage(
                      imageUrl: ImageHelper.offerList[index],
                      imageBuilder: (context, imageProvider) => Container(
                        width: 115,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: imageProvider, fit: BoxFit.fill)),
                      ),
                      placeholder: (context, url) => SizedBox(
                          height: 150,
                          child: Center(
                              child: Image(
                            image: AssetHelper.loadingGifRed,
                            width: 30,
                          ))),
                      errorWidget: (context, url, error) => SizedBox(
                          height: 150,
                          width: Get.width / 3.1,
                          child: Image(image: AssetHelper.smmartLifeLogo)),
                    );
                  },
                )),
            const SizedBox(height: 5),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: const Text(
                'Top Deals',
                style: TextStyle(
                    fontFamily: FontHelper.avenirMedium,
                    fontSize: 16,
                    letterSpacing: -0.5),
              ),
            ),
            const SizedBox(height: 5),
            const RecomandedProductsTile(),
            const SizedBox(height: 10),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: const Text(
                'Highest BV points products',
                style: TextStyle(
                    fontFamily: FontHelper.avenirMedium,
                    fontSize: 16,
                    letterSpacing: -0.5),
              ),
            ),
            const SizedBox(height: 10),
            const HighestBVProducts(),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

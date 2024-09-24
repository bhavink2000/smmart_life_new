import 'package:flutter/cupertino.dart';

import '../color_helper.dart';

class ImageHelper {
  // static List images = [
  //   'https://cdn-dabbg.nitrocdn.com/UhgdnYYZIwWgHCnguWAGrOORsqpsoRIA/assets/static/optimized/rev-e1b161d/wp-content/uploads/2021/06/Fairness-Cream-scaled-removebg-preview-1.png',
  //   'https://cdn-dabbg.nitrocdn.com/UhgdnYYZIwWgHCnguWAGrOORsqpsoRIA/assets/static/optimized/rev-e1b161d/wp-content/uploads/2021/06/Fruit-Facewash-removebg-preview.png',
  //   'https://cdn-dabbg.nitrocdn.com/UhgdnYYZIwWgHCnguWAGrOORsqpsoRIA/assets/static/optimized/rev-e1b161d/wp-content/uploads/2021/06/Charcol-Facewash-scaled-removebg-preview.png',
  //   'https://cdn-dabbg.nitrocdn.com/UhgdnYYZIwWgHCnguWAGrOORsqpsoRIA/assets/static/optimized/rev-e1b161d/wp-content/uploads/2021/06/AntiAging-Night-Cream-scaled-removebg-preview.png',
  // ];

  static List images = [
    'assets/images/More/Hero Banner 1.png',
    'assets/images/More/Hero Banner 2.png'
  ];

  static String backgroundImage = 'https://img.freepik.com/premium-vector/3d-stage-with-shadow-overlay-from-branches-leaves-plants-mint-green-empty-studio-room_153791-608.jpg?w=1060' ;

  static List productImages = [
    'https://smmartlifenew.windzoon.in/assets/images/pro_img1.jpg',
    'https://smmartlifenew.windzoon.in/assets/images/pro_img5.jpg',
    'https://smmartlifenew.windzoon.in/assets/images/pro_img6.jpg',
    'https://smmartlifenew.windzoon.in/assets/images/pro_img7.jpg',
    'https://smmartlifenew.windzoon.in/assets/images/pro_img8.jpg',
  ] ;

  static List productName = [
    'Handwash',
    'Antistress',
    'Neev',
    'Febugreek Oil',
    'Chia Seed'
  ] ;

  static List productPrice = [
    '169',
    '105',
    '199',
    '224',
    '181'
  ] ;

  static List productBV = [
    '69',
    '55',
    '99',
    '75',
    '81'
  ] ;

  static List offerList = [
    'https://smmartlifenew.windzoon.in/assets/images/cate_1.webp',
    'https://smmartlifenew.windzoon.in/assets/images/cate_2.webp',
    'https://smmartlifenew.windzoon.in/assets/images/cate_3.webp',
  ] ;

  static List categoryNameList = [
    'Health Care',
    'Skin Care',
    'Hair Care',
    'Face Skin',
    'Blusher',
    'Natural',
  ];

  static List<Color> categoryColorList = [
    ColorHelper.healthCareCard,
    ColorHelper.skincareCard,
    ColorHelper.haircareCard,
    ColorHelper.faceSkinCard,
    ColorHelper.blusherCard,
    ColorHelper.naturalCard,
  ] ;

  static List categoryImageList = [
    'assets/images/Categories/icon_1.png',
    'assets/images/Categories/icon_2.png',
    'assets/images/Categories/icon_3.png',
    'assets/images/Categories/icon_4.png',
    'assets/images/Categories/icon_5.png',
    'assets/images/Categories/icon_6.png',
  ] ;

  bool validateEmail(email) {
    final bool emailValid =
    RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
    return emailValid ;
  }
}

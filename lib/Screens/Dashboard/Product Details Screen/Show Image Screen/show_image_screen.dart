import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../App Helper/asset_helper.dart';

class ShowImageScreen extends StatelessWidget {
  final String? image ;
  const ShowImageScreen({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(
          onPressed: () {
            // controller.index.value = 0 ;
            Get.back();
          },
          icon: const ImageIcon(
            AssetImage('assets/images/back.png'),
            color: Colors.black,
          )),),
      body: InteractiveViewer(
        panEnabled: true,
        boundaryMargin: const EdgeInsets.all(0),
        minScale: 0.5,
        maxScale: 5,
        child: SizedBox(
          height: Get.height,
          width: Get.width,
          child: image == null
              ? Image.asset(
              'assets/images/More/Icon ionic-md-images@3x.png',
              color: Colors.white,
              width: 120)
              : CachedNetworkImage(
            imageUrl: image!,
            imageBuilder: (context, imageProvider) => Container(
              // width: 115,
              // margin: const EdgeInsets.symmetric(
              //     horizontal: 10, vertical: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.fitHeight)),
            ),
            placeholder: (context, url) => SizedBox(
                height: 150,
                child: Center(
                    child: Image(
                      image: AssetHelper.loadingGifRed,
                      width: 50,
                    ))),
            errorWidget: (context, url, error) => SizedBox(
                height: 150,
                width: Get.width ,
                child:
                Image(image: AssetHelper.smmartLifeLogo)),
          ),
        ),
      ),
    );
  }
}

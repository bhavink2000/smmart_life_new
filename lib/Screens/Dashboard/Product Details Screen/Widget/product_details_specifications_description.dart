import 'package:flutter/material.dart';

import '../../../../App Helper/color_helper.dart';
import '../../../../App Helper/font_helper.dart';

class ProductDetailsSpecificationsAndDescription extends StatelessWidget {
  const ProductDetailsSpecificationsAndDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            // margin: EdgeInsets.only(top: 10),
            child: const Text('Specifications :',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: FontHelper.arvinHavy,
                    fontWeight: FontWeight.w600)),
          ),
          const SpecificationLabelAndValue(
            label: 'Net Content Volume :',
            value: '500 ml',
          ),
          const SpecificationLabelAndValue(
            label: 'Item Dimensions LxWxH :',
            value: '7.6 x 7.6 x 22.9 cm',
          ),
          const SpecificationLabelAndValue(
            label: 'Weight :',
            value: '497 grams',
          ),
          const SpecificationLabelAndValue(
            label: 'Plant or Animal Product Type :',
            value: 'Coconut',
          ),
          const SpecificationLabelAndValue(
            label: 'Ingredients :',
            value: 'Coconut Oil',
          ),
          // Divider(color: ColorHelper.lightGrey,),
          const SizedBox(height: 5),
          Container(
            alignment: Alignment.centerLeft,
            // margin: EdgeInsets.only(top: 10),
            child: const Text('Description :',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: FontHelper.arvinHavy,
                    fontWeight: FontWeight.w600)),
          ),
          const SizedBox(height: 5),
          const Text(
            'Lorem ipsum dolor sit amet consectetur adipisicing elit.'
            ' Eius velit corporis quo voluptate culpa soluta, esse accusamus,'
            ' sunt quia omnis amet temporibus sapiente harum quam itaque libero tempore.'
            ' Ipsum, ducimus. lorem',
            style: TextStyle(fontFamily: FontHelper.avenirBook),
          ),
        ],
      ),
    );
  }
}

class SpecificationLabelAndValue extends StatelessWidget {
  final String? label, value;
  const SpecificationLabelAndValue({super.key, this.label, this.value});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label ?? 'Label',
            style: const TextStyle(
                fontFamily: FontHelper.avenirBook,
                fontSize: 14,
                letterSpacing: -0.2,
                color: ColorHelper.darkGray),
          ),
          Text(
            value ?? 'Value',
            style: const TextStyle(
                fontFamily: FontHelper.avenirBook,
                fontSize: 14,
                letterSpacing: -0.2),
          ),
        ],
      ),
    );
  }
}

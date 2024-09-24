import 'package:flutter/material.dart';

import '../../../../../App Helper/color_helper.dart';
import '../../../../../App Helper/font_helper.dart';

class DashHomePVGrid extends StatelessWidget {
  final String? label, value;
  const DashHomePVGrid({super.key, this.label, this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 100,
      padding: const EdgeInsets.symmetric(vertical: 0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(10),
          ),
          border: Border.all(color: ColorHelper.lightGrey)),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(10),
              ),
            ),
            child: Center(
              child: Text(
                '$label',
                style: const TextStyle(
                    fontFamily: FontHelper.avenirBook,
                    fontSize: 13,
                    letterSpacing: -0.3),
              ),
            ),
          ),
          Expanded(
            child: Container(
              // height: 40,
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.symmetric(vertical: 0),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  end: Alignment.bottomRight,
                  begin: Alignment.topLeft,
                  colors: [ColorHelper.brown, ColorHelper.surfCrest],
                ),
              ),
              child: Center(
                child: Text(
                  '$value',
                  style: const TextStyle(
                      fontFamily: FontHelper.arvinHavy, fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DashHomeBVTile extends StatelessWidget {
  final String label, value;
  const DashHomeBVTile({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
        color: ColorHelper.lightBrown,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style:
                const TextStyle(fontFamily: FontHelper.arvinHavy, fontSize: 15),
          ),
          Text(
            value,
            style:
                const TextStyle(fontFamily: FontHelper.arvinHavy, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

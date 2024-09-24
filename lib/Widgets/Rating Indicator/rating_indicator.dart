import 'package:flutter/material.dart';
import 'package:smmart_life_new/App%20Helper/color_helper.dart';

class RatingIndicator extends StatelessWidget {
  const RatingIndicator({super.key, this.ratings = 4, this.size});
  final int ratings;
  final double? size;

  @override
  Widget build(BuildContext context) {
    // int totalNumberOfStar = 5;
    return Row(
        children: List.generate(5, (index) {
      if (index < ratings) {
        return Icon(
          Icons.star,
          size: size,
          color: Colors.red,
        );
      }
      return InkWell(
        child: Icon(
          Icons.star,
          size: size,
          color: ColorHelper.peachOrange,
        ),
      );
    }));
  }
}

// ignore: must_be_immutable
class RatingIndicatorForInput extends StatelessWidget {
  final double? size;
  final int rating;
  final ValueChanged? onRatingChanged;
  int? starCount;
  RatingIndicatorForInput(
      {super.key,
      this.size,
      this.rating = 0,
      required this.onRatingChanged,
      this.starCount = 5});

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = Icon(
        Icons.star,
        size: size,
        color: ColorHelper.peachOrange,
      );
    } else {
      icon = Icon(
        Icons.star,
        size: size,
        color: Colors.red,
      );
    }
    return InkResponse(
      onTap: onRatingChanged == null ? null : () => onRatingChanged!(index + 1),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        children:
            List.generate(starCount!, (index) => buildStar(context, index)));
  }
}

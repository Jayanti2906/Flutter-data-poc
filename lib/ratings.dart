import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';


class StarDisplay extends StatelessWidget {
  final double value;
  const StarDisplay({Key key, this.value = 0}) : assert(value != null), super(key: key);
  @override
  Widget build(BuildContext context) {
        return SmoothStarRating(
            allowHalfRating: false,
            onRated: (v) {
            },
            starCount: 10,
            size: 30.0,
            rating: value,
            isReadOnly:true,
            color: Colors.amber,
            borderColor: Colors.amber,
            spacing:0.0,
        );

  }
}
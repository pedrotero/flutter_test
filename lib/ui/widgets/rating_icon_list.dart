import 'package:flutter/material.dart';

List<Icon> ratingIconList(double n) {
  int nFloor = n.floor();
  List<Icon> icons = List.filled(
    nFloor,
    const Icon(
      Icons.star,
      color: Color(0xFFFFB800),
      size: 12,
    ),
    growable: true,
  );
  return n - nFloor == 0
      ? icons
      : [
          ...icons,
          const Icon(
            Icons.star_half,
            color: Color(0xFFFFB800),
            size: 12,
          ),
        ];
}

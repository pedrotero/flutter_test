import 'package:flutter/material.dart';
import 'package:restaurant_tour/models/restaurant.dart';
import 'package:restaurant_tour/typography.dart';

Container restaurantListItem(Restaurant restaurant) {
  return Container(
    padding: const EdgeInsets.all(8),
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      color: Color(0xFFFFFFFF),
      boxShadow: [
        BoxShadow(
          color: Color(0x1F000000),
          blurRadius: 5,
          offset: Offset(0, 1),
        ),
      ],
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          height: 88,
          width: 88,
          child: Image.network(
            restaurant.photos?.first ?? "",
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              restaurant.name ?? "",
              style: AppTextStyles.loraRegularTitle,
              softWrap: true,
              maxLines: 2,
            ),
            Text(
              "${(restaurant.price ?? "\$").padRight(4, " ")} ${restaurant.displayCategory}",
            ),
            const Row(
              children: [],
            ),
          ],
        ),
      ],
    ),
  );
}

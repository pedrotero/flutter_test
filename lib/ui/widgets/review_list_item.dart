import 'package:flutter/material.dart';
import 'package:restaurant_tour/models/restaurant.dart';
import 'package:restaurant_tour/typography.dart';
import 'package:restaurant_tour/ui/widgets/rating_icon_list.dart';

Widget reviewListItem(Review review) {
  return Container(
    child: Column(
      children: [
        Row(
          children: [...ratingIconList((review.rating ?? 0).toDouble())],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            review.text ?? '',
            softWrap: true,
            style: AppTextStyles.openRegularText,
          ),
        ),
        Row(
          children: [
            Container(
              decoration: const BoxDecoration(shape: BoxShape.circle),
              clipBehavior: Clip.hardEdge,
              height: 40,
              width: 40,
              child: review.user?.imageUrl != null &&
                      !(const bool.fromEnvironment("TESTING"))
                  ? Image.network(
                      review.user?.imageUrl ?? '',
                      fit: BoxFit.cover,
                    )
                  : const Icon(Icons.person),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              review.user?.name ?? '',
              style: AppTextStyles.openRegularText,
            ),
          ],
        ),
      ],
    ),
  );
}

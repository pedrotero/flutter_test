import 'package:flutter/material.dart';
import 'package:restaurant_tour/models/restaurant.dart';
import 'package:restaurant_tour/typography.dart';
import 'package:restaurant_tour/ui/views/restaurant_detail_page.dart';
import 'package:restaurant_tour/ui/widgets/is_open_label.dart';
import 'package:restaurant_tour/ui/widgets/rating_icon_list.dart';

Widget restaurantListItem(BuildContext context, Restaurant restaurant) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RestaurantDetailPage(
            restaurant: restaurant,
          ),
        ),
      );
    },
    child: Container(
      constraints: BoxConstraints.loose(const Size.fromHeight(112)),
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
        crossAxisAlignment: CrossAxisAlignment.start,
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
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  style: AppTextStyles.openRegularText,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...ratingIconList(restaurant.rating ?? 0),
                    const Spacer(),
                    ...isOpenLabel(restaurant.isOpen),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

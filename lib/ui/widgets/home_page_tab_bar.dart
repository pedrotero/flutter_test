import 'package:flutter/material.dart';
import 'package:restaurant_tour/typography.dart';

Widget homePageTabBar(
  BuildContext context,
  bool showFavourites,
  Function(bool toggleTab) callback,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      GestureDetector(
        onTap: () {
          callback(false);
        },
        child: Container(
          padding: const EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
            border: BorderDirectional(
              bottom: !showFavourites
                  ? const BorderSide(color: Color(0xFF000000), width: 2)
                  : BorderSide.none,
            ),
          ),
          child: Text(
            "All restaurants",
            style: !showFavourites
                ? AppTextStyles.openRegularTitleSemiBold
                : AppTextStyles.openRegularTitleSemiBold
                    .copyWith(color: const Color(0xFF606060)),
          ),
        ),
      ),
      const SizedBox(
        width: 24,
      ),
      GestureDetector(
        onTap: () {
          callback(true);
        },
        child: Container(
          padding: const EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
            border: BorderDirectional(
              bottom: showFavourites
                  ? const BorderSide(color: Color(0xFF000000), width: 2)
                  : BorderSide.none,
            ),
          ),
          child: Text(
            "My favorites",
            key: const Key("favouritesButton"),
            style: showFavourites
                ? AppTextStyles.openRegularTitleSemiBold
                : AppTextStyles.openRegularTitleSemiBold
                    .copyWith(color: const Color(0xFF606060)),
          ),
        ),
      ),
    ],
  );
}

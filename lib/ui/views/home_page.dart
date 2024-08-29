import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant_tour/controllers/favourites_provider.dart';
import 'package:restaurant_tour/controllers/restaurants_provider.dart';
import 'package:restaurant_tour/models/restaurant.dart';
import 'package:restaurant_tour/typography.dart';
import 'package:restaurant_tour/ui/widgets/home_page_tab_bar.dart';
import 'package:restaurant_tour/ui/widgets/restaurant_list_item.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  bool showFavourites = false;

  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<Restaurant>?> restaurants = !showFavourites
        ? ref.watch(restaurantsProvider)
        : ref.watch(favouritesProvider);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                const Text(
                  "RestauranTour",
                  style: AppTextStyles.loraRegularHeadline,
                ),
                const SizedBox(
                  height: 12,
                ),
                homePageTabBar(context, showFavourites, toggleTab),
              ],
            ),
            Expanded(
              child: switch (restaurants) {
                AsyncError() => Container(),
                AsyncData(:final value) => value != null
                    ? restaurantList(context, value)
                    : const Text(
                        "Something went wrong :(",
                        style: AppTextStyles.openRegularHeadline,
                      ),
                _ => const CircularProgressIndicator()
              },
            ),
          ],
        ),
      ),
    );
  }

  void toggleTab(bool newValue) {
    setState(() {
      showFavourites = newValue;
    });
  }
}

ListView restaurantList(BuildContext context, List<Restaurant> restaurants) {
  return ListView.separated(
    padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
    itemBuilder: (context, i) => restaurantListItem(context, restaurants[i]),
    separatorBuilder: (context, i) => const SizedBox(
      height: 12,
    ),
    itemCount: restaurants.length,
  );
}

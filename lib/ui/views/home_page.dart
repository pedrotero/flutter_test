import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant_tour/data/provider.dart';
import 'package:restaurant_tour/models/restaurant.dart';
import 'package:restaurant_tour/typography.dart';
import 'package:restaurant_tour/ui/widgets/restaurant_list_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            Text(
              "RestauranTour",
              style: AppTextStyles.loraRegularHeadline,
            ),
            Row(
              children: [
                Text(
                  "All restaurants",
                  style: AppTextStyles.openRegularTitleSemiBold,
                ),
                Text(
                  "My favourites",
                  style: AppTextStyles.openRegularTitleSemiBold,
                ),
              ],
            ),
          ],
        ),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final AsyncValue<List<Restaurant>> restaurants =
              ref.watch(restaurantsProvider);

          return switch (restaurants) {
            AsyncError() => Container(),
            AsyncData(:final value) => restaurantList(value),
            _ => const CircularProgressIndicator()
          };
        },
      ),
    );
  }
}

ListView restaurantList(List<Restaurant> restaurants) {
  return ListView.separated(
    padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
    itemBuilder: (context, i) => restaurantListItem(restaurants[i]),
    separatorBuilder: (context, i) => const SizedBox(
      height: 12,
    ),
    itemCount: restaurants.length,
  );
}

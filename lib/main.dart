import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant_tour/ui/views/home_page.dart';

void main() {
  runApp(const ProviderScope(child: RestaurantTour()));
}

class RestaurantTour extends StatelessWidget {
  const RestaurantTour({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Restaurant Tour',
      home: HomePage(),
    );
  }
}

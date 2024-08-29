import 'package:restaurant_tour/controllers/yelp_provider.dart';
import 'package:restaurant_tour/models/restaurant.dart';
//import 'package:restaurant_tour/repositories/yelp_mock_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'restaurants_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
Future<List<Restaurant>?> restaurants(RestaurantsRef ref) async {
  return (await ref.watch(yelpProviderProvider).getRestaurants())?.restaurants;
  //return (await mockYelpResult())?.restaurants;
}

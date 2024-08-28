import 'package:restaurant_tour/models/restaurant.dart';
import 'package:restaurant_tour/repositories/yelp_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

YelpRepository yelp = YelpRepository();

@riverpod
Future<List<Restaurant>> restaurants(RestaurantsRef ref) async {
  return (await yelp.getRestaurants())?.restaurants ?? [];
}

import 'package:restaurant_tour/models/restaurant.dart';
import 'package:restaurant_tour/repositories/yelp_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'yelp_provider.g.dart';

@Riverpod(keepAlive: true)
Future<RestaurantQueryResult?> yelp(YelpRef ref) =>
    YelpRepository().getRestaurants();

import 'dart:convert';

import 'package:restaurant_tour/models/restaurant.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'favourites_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
class Favourites extends _$Favourites {
  final SharedPreferencesAsync _sharedPrefs = SharedPreferencesAsync();

  Future<List<Restaurant>> _readAll() async {
    final dryRestaurants = await _sharedPrefs.getStringList("favourites") ?? [];

    return (dryRestaurants
        .map((str) => Restaurant.fromJson(jsonDecode(str)))
        .toList());
  }

  @override
  Future<List<Restaurant>> build() async {
    return await _readAll();
  }

  Future<void> addFavourite(Restaurant restaurant) async {
    List<Restaurant> favourites = state.value ?? await _readAll();
    List<String> dryFavourites =
        favourites.map((r) => jsonEncode(r.toJson())).toList();
    String newRestaurant = jsonEncode(restaurant.toJson());
    dryFavourites = [...dryFavourites, newRestaurant];
    await _sharedPrefs.setStringList("favourites", dryFavourites);
    state = AsyncData([...favourites, restaurant]);
  }

  Future<Restaurant?> findById(String id) async {
    List<Restaurant> favourites = state.value ?? await _readAll();
    return favourites
        .where(
          (e) => e.id == id,
        )
        .firstOrNull;
  }

  Future<void> deleteFavourite(String id) async {
    List<Restaurant> favourites = state.value ?? await _readAll();
    int index = favourites.indexWhere((r) => r.id == id);
    favourites.removeAt(index);
    List<String> dryFavourites =
        favourites.map((r) => jsonEncode(r.toJson())).toList();
    await _sharedPrefs.setStringList("favourites", dryFavourites);
    state = AsyncData(favourites);
  }
}

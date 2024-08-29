import 'package:restaurant_tour/data/isar.dart';
import 'package:restaurant_tour/models/restaurant.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favourites_provider.g.dart';

@Riverpod(keepAlive: true)
class Favourites extends _$Favourites {
  late IsarService _isarService;

  @override
  Future<List<Restaurant>> build() async {
    _isarService = ref.watch(isarServiceProvider.notifier);
    return (await _isarService.readAll());
  }

  Future<void> addFavourite(Restaurant restaurant) async {
    await _isarService.writeOne(restaurant);
    state = AsyncData(await _isarService.readAll());
  }

  Future<Restaurant?> findById(String id) async {
    return await _isarService.findById(id);
  }

  Future<void> deleteFavourite(String id) async {
    await _isarService.deleteOne(id);
    state = AsyncData(await _isarService.readAll());
  }
}

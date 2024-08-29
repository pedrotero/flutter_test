import 'dart:async';
import 'dart:convert';

import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:restaurant_tour/models/restaurant.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'isar.g.dart';

@Collection()
class RestaurantDao {
  Id id = Isar.autoIncrement;
  @Index(type: IndexType.hash)
  String yelpId;
  String data;
  RestaurantDao({required this.yelpId, required this.data});
}

// class IsarService {
//   final Isar _isar;

//   IsarService({required isar}) : _isar = isar;

//   Future<int> writeOne(Restaurant restaurant) {
//     RestaurantDao dryRestaurant = RestaurantDao(
//       yelpId: restaurant.id ?? "",
//       data: jsonEncode(restaurant.toJson()),
//     );
//     return _isar.restaurantDaos.put(dryRestaurant);
//   }

//   Future<List<Restaurant>> readAll() async {
//     List<RestaurantDao> dryRestaurants =
//         await _isar.restaurantDaos.where().findAll();

//     return dryRestaurants
//         .map((e) => Restaurant.fromJson(jsonDecode(e.data)))
//         .toList();
//   }

//   Future<Restaurant?> findById(String yelpId) async {
//     RestaurantDao? result =
//         await _isar.restaurantDaos.getByIndex("yelpId", [yelpId]);
//     return result != null ? jsonDecode(result.data) : null;
//   }

//   Future<void> deleteOne(String yelpId) {
//     return _isar.restaurantDaos.deleteByIndex("yelpId", [yelpId]);
//   }
// }

Future<Isar> isarInit() async {
  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [RestaurantDaoSchema],
    directory: dir.path,
  );
  return isar;
}

@Riverpod(keepAlive: true)
class IsarService extends _$IsarService {
  final _completer = Completer<bool>();
  late Isar _isar;
  @override
  Future<void> build() async {
    _isar = await isarInit();
    _completer.complete(true);
  }

  Future<int> writeOne(Restaurant restaurant) async {
    await _completer.future;
    RestaurantDao dryRestaurant = RestaurantDao(
      yelpId: restaurant.id ?? "",
      data: jsonEncode(restaurant.toJson()),
    );
    return _isar.writeTxn(() => _isar.restaurantDaos.put(dryRestaurant));
  }

  Future<List<Restaurant>> readAll() async {
    await _completer.future;
    List<RestaurantDao> dryRestaurants =
        await _isar.restaurantDaos.where().findAll();

    return dryRestaurants
        .map((e) => Restaurant.fromJson(jsonDecode(e.data)))
        .toList();
  }

  Future<Restaurant?> findById(String yelpId) async {
    await _completer.future;
    RestaurantDao? result =
        await _isar.restaurantDaos.getByIndex("yelpId", [yelpId]);
    return result != null ? Restaurant.fromJson(jsonDecode(result.data)) : null;
  }

  Future<void> deleteOne(String yelpId) {
    return _isar
        .writeTxn(() => _isar.restaurantDaos.deleteByIndex("yelpId", [yelpId]));
  }
}

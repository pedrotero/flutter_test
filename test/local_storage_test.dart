import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:restaurant_tour/controllers/yelp_provider.dart';
import 'package:restaurant_tour/main.dart';
import 'package:restaurant_tour/models/restaurant.dart';
import 'package:restaurant_tour/repositories/yelp_mock_response.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  testWidgets('Shows all favourites', (WidgetTester tester) async {
    TestWidgetsFlutterBinding.ensureInitialized();
    List<Map<String, dynamic>> fakeBusinessesJson =
        fakeBusinesses.getRange(0, 5).toList();
    SharedPreferences.setMockInitialValues({
      "favourites": fakeBusinessesJson.map((json) => jsonEncode(json)).toList(),
    });

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          yelpProvider.overrideWith((ref) => mockYelpResult()),
        ],
        child: const RestaurantTour(),
      ),
    );

    final favouritesButton = find.byKey(const Key("favouritesButton"));
    await tester.tap(favouritesButton.first);
    await tester.pumpAndSettle();

    List<Restaurant> restaurants =
        fakeBusinessesJson.map((e) => Restaurant.fromJson(e)).toList();
    for (var restaurant in restaurants) {
      await tester.scrollUntilVisible(
        find.byKey(
          Key(restaurant.id!),
          skipOffstage: false,
        ),
        100,
      );
      print(restaurant.name!);
      expect(find.text(restaurant.name!, skipOffstage: false), findsOneWidget);
    }
  });
}

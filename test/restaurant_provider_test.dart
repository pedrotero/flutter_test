import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:restaurant_tour/controllers/yelp_provider.dart';
import 'package:restaurant_tour/main.dart';
import 'package:restaurant_tour/repositories/yelp_mock_response.dart';

void main() {
  testWidgets('Shows all restaurants', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [yelpProvider.overrideWith((ref) => mockYelpResult())],
        child: const RestaurantTour(),
      ),
    );

    await tester.pumpAndSettle();
    for (var business in fakeBusinesses) {
      await tester.scrollUntilVisible(
        find.byKey(
          Key(business["id"]),
          skipOffstage: false,
        ),
        100,
      );
      expect(find.text(business["name"], skipOffstage: false), findsOneWidget);
    }
  });
}

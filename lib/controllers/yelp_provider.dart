import 'package:restaurant_tour/repositories/yelp_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'yelp_provider.g.dart';

@Riverpod(keepAlive: true)
YelpRepository yelpProvider(YelpProviderRef ref) => YelpRepository();

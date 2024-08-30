import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant_tour/controllers/favourites_provider.dart';
import 'package:restaurant_tour/models/restaurant.dart';
import 'package:restaurant_tour/typography.dart';
import 'package:restaurant_tour/ui/widgets/is_open_label.dart';
import 'package:restaurant_tour/ui/widgets/review_list_item.dart';

class RestaurantDetailPage extends ConsumerStatefulWidget {
  final Restaurant restaurant;
  const RestaurantDetailPage({super.key, required this.restaurant});

  @override
  ConsumerState<RestaurantDetailPage> createState() =>
      _RestaurantDetailPageState();
}

class _RestaurantDetailPageState extends ConsumerState<RestaurantDetailPage> {
  bool isFavourite = false;

  @override
  void initState() {
    super.initState();
    computeIsFavourite().then((result) {
      setState(() {
        isFavourite = result;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back),
        ),
        title: Text(
          widget.restaurant.name ?? "",
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.loraRegularHeadline,
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: handleFavouriteAction,
            child: Icon(isFavourite ? Icons.favorite : Icons.favorite_border),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            !(const bool.fromEnvironment("TESTING"))
                ? Image.network(
                    widget.restaurant.photos?.first ?? "",
                    fit: BoxFit.cover,
                  )
                : Container(),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${(widget.restaurant.price ?? "\$").padRight(4, " ")} ${widget.restaurant.displayCategory}",
                        style: AppTextStyles.openRegularText,
                      ),
                      Row(
                        children: [...isOpenLabel(widget.restaurant.isOpen)],
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                    color: Color(0xFFEEEEEE),
                    height: 48,
                  ),
                  const Text(
                    "Address",
                    style: AppTextStyles.openRegularText,
                  ),
                  Text(
                    widget.restaurant.location?.formattedAddress ?? "",
                    style: AppTextStyles.openRegularTitleSemiBold,
                  ),
                  const Divider(
                    thickness: 1,
                    color: Color(0xFFEEEEEE),
                    height: 48,
                  ),
                  const Text("Overall Rating"),
                  Row(
                    children: [
                      Text(
                        widget.restaurant.rating?.toStringAsFixed(1) ?? "-",
                        style: AppTextStyles.loraRegularHeadline
                            .copyWith(fontSize: 28),
                      ),
                      const Icon(
                        Icons.star,
                        color: Color(0xFFFFB800),
                        size: 12,
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                    color: Color(0xFFEEEEEE),
                    height: 48,
                  ),
                  Text("${widget.restaurant.reviews?.length ?? 0} Reviews"),
                  ...reviewList(widget.restaurant.reviews ?? []),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> handleFavouriteAction() async {
    if (await computeIsFavourite()) {
      await ref
          .read(favouritesProvider.notifier)
          .deleteFavourite(widget.restaurant.id ?? "");
      setState(() {
        isFavourite = false;
      });
    } else {
      await ref
          .read(favouritesProvider.notifier)
          .addFavourite(widget.restaurant);
      setState(() {
        isFavourite = true;
      });
    }
  }

  Future<bool> computeIsFavourite() async {
    final result = await ref
        .read(favouritesProvider.notifier)
        .findById(widget.restaurant.id ?? "");
    return result != null;
  }

  List<Widget> reviewList(List<Review> reviews) {
    List<Widget> widgetList = [];
    for (var review in reviews) {
      widgetList.add(reviewListItem(review));
      if (review != reviews.last) {
        widgetList.add(
          const Divider(
            thickness: 1,
            color: Color(0xFFEEEEEE),
            height: 24,
          ),
        );
      }
    }
    return widgetList;
  }
}

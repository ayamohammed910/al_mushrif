part of '../../offers_imports.dart';
class OffersGridview extends StatelessWidget {
  final List<OfferModel> offers;

  const OffersGridview({super.key, required this.offers});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.72,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
      itemCount: offers.length,
      itemBuilder: (context, index) {
        return ItemCard(
          offerModel: offers[index],
          onTap: () {
            print("Clicked on ${offers[index].title}");
          },
          onFavoriteTap: () {
            print("Favorite clicked on ${offers[index].title}");
          },
        );
      },
    );
  }
}
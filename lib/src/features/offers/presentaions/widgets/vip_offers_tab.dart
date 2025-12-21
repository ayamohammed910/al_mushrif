part of '../../offers_imports.dart';

class VipOffersTab extends StatelessWidget {
  const VipOffersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Banner
        Padding(
          padding: const EdgeInsets.all(AppSizes.p8),
          child: CustomVipCard(
            order: "Subscribe Now",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) =>  VipOffers()),
              );
            },
          ),
        ),

        // Grid of offers
        Expanded(
          child: OffersGridview(
            offers: [
              OfferModel(
                title: "AL ALALI CHOICE PINEAPPLE",
                category: "General Food",
                image: "assets/png/product.png",
                price: 7.75,
                rating: 4,
              ),
              OfferModel(
                title: "California Garden Pineapple",
                category: "General Food",
                image: "assets/png/product.png",
                price: 7.75,
                rating: 1,
              ),
              OfferModel(
                title: "California Garden Pineapple",
                category: "General Food",
                image: "assets/png/product.png",
                price: 7.75,
                rating: 0,
              ),
              OfferModel(
                title: "California Garden Pineapple",
                category: "General Food",
                image: "assets/png/product.png",
                price: 7.75,
                rating: 5,
              ),
              OfferModel(
                title: "California Garden Pineapple",
                category: "General Food",
                image: "assets/png/product.png",
                price: 7.75,
                rating: 3,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

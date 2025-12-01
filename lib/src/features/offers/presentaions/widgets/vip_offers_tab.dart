part of '../../offers_imports.dart';

class VipOffersTab extends StatelessWidget {
  const VipOffersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Image.asset(
              'assets/png/adver.png',
              width: double.infinity,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
          OffersGridview(
            offers: [
              OfferModel(
                title: "AL ALALI CHOICE PINEAPPLE",
                category: "General Food",
                image: "assets/png/product.png",
                price: 7.75 ,
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
              ), OfferModel(
                title: "California Garden Pineapple",
                category: "General Food",
                image: "assets/png/product.png",
                price: 7.75,
                rating: 5,
              ), OfferModel(
                title: "California Garden Pineapple",
                category: "General Food",
                image: "assets/png/product.png",
                price: 7.75,
                rating: 3,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
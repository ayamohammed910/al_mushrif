part of '../../offers_imports.dart';

class OnSaleTab extends StatelessWidget {
  const OnSaleTab({super.key});

  @override
  Widget build(BuildContext context) {
    return OffersGridview(
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
    );
  }
}
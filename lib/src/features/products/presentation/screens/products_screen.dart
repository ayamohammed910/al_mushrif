part of '../../products_imports.dart';

class ProductsScreen extends StatefulWidget {
  final CategoryModel category;

  const ProductsScreen({super.key, required this.category});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  List<ProductModel> topSellingProducts = [
    ProductModel(
      title: "Lemon Yellow",
      category: "Fruits",
      image: "assets/png/product.png",
      price: 9.95,
      rating: 4,
    ),
    ProductModel(
      title: "Strawberry Fresh",
      category: "Fruits",
      image: "assets/png/product.png",
      price: 19.95,
      rating: 5,
    ),
    ProductModel(
      title: "Pineapple Jumbo",
      category: "Fruits",
      image: "assets/png/product.png",
      price: 14.95,
      rating: 3,
    ),
  ];
  List<ProductModel> relatedProducts = [
    ProductModel(
      title: "Lemon Yellow",
      category: "Fruits",
      image: "assets/png/product.png",
      price: 9.95,
      rating: 4,
    ),
    ProductModel(
      title: "Strawberry Fresh",
      category: "Fruits",
      image: "assets/png/product.png",
      price: 19.95,
      rating: 5,
    ),
  ];
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ScafoldBackground,

      // APP BAR
      body: CustomScrollView(
        slivers: [
          CustomSilverAppBar(
            imagePath: widget.category.image,
            onBack: () => Navigator.pop(context),
            onFavorite: () {},
          ),

          SliverPadding(
            padding: const EdgeInsets.all(AppSizes.p16),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                ProductDatailsInfo(
                  category: widget.category.category,
                  title: widget.category.title,
                  price: widget.category.price,
                  seller: "AL Mushrif Coop",
                  rating: widget.category.rating,
                  reviews: 12,
                ),

                const SizedBox(height: AppSizes.h20),

                const CustomText(
                  "Top Selling Products",
                  textStyle: TextStyle(
                    fontSize: AppSizes.fs18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: AppSizes.h10),

                SizedBox(
                  height: AppSizes.h270,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: topSellingProducts.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: AppSizes.w160,
                        child: ProductItemCard(
                          productModel: topSellingProducts[index],
                          onTap: () {},
                          onFavoriteTap: () {},
                        ),
                      );
                    },
                  ),
                ),

                const SizedBox(height: AppSizes.h20),

                const Text(
                  "Related Products",
                  style: TextStyle(
                    fontSize: AppSizes.fs18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: AppSizes.h10),

                SizedBox(
                  height: AppSizes.h270,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: relatedProducts.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: AppSizes.w160,
                        child: ProductItemCard(
                          productModel: relatedProducts[index],
                          onTap: () {},
                          onFavoriteTap: () {},
                        ),
                      );
                    },
                  ),
                ),

                const SizedBox(height: AppSizes.h20),
              ]),
            ),
          ),
        ],
      ),

      // FIXED BOTTOM BAR (CLEAN WAY)
      bottomNavigationBar: ProductBottomNavbar(),
    );
  }
}

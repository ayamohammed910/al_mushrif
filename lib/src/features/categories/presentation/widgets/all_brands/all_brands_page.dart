part of '../../../categories_imports.dart';
class AllBrandsPage extends StatefulWidget {
  @override
  State<AllBrandsPage> createState() => _AllBrandsPageState();
}

class _AllBrandsPageState extends State<AllBrandsPage> {
  TextEditingController searchController = TextEditingController();
  List<BrandModel> brands = [
    BrandModel(name: "555", image: "assets/png/product.png"),
    BrandModel(name: "7up", image: "assets/png/gift_card_placeholder.png"),
    BrandModel(name: "7Days", image: "assets/png/logo.png"),
    BrandModel(name: "Acorsa", image: "assets/png/gift_card_placeholder.png"),
    BrandModel(name: "Abu Auf", image: "assets/png/product.png"),
    BrandModel(name: "Abu Kas", image: "assets/png/gift_card_placeholder.png"),
  ];
  List<CategoryModel> sampleBrandProducts = [
    CategoryModel(
      title: "555 Tuna Flakes in Oil",
      category: "Canned & Dry Goods",
      image: "assets/png/logo.png",
      price: 3.95,
      rating: 4.5,
    ),
    CategoryModel(
      title: "555 Tuna Hot & Spicy",
      category: "Canned & Dry Goods",
      image: "assets/png/logo.png",
      price: 3.95,
      rating: 4.2,
    ),
    CategoryModel(
      title: "555 Tuna Flakes Adobo",
      category: "Canned & Dry Goods",
      image: "assets/png/product.png",
      price: 3.95,
      rating: 4.0,
    ),

    CategoryModel(
      title: "555 Fried Sardines Hot & Spicy",
      category: "Canned & Dry Goods",
      image: "assets/png/product.png",
      price: 4.20,
      rating: 4.8,
    ),
    CategoryModel(
      title: "555 Sardines in Tomato Sauce",
      category: "Canned & Dry Goods",
      image: "assets/png/product.png",
      price: 2.95,
      rating: 4.1,
    ),
    CategoryModel(
      title: "555 Fried Sardines w/ Tomato",
      category: "Canned & Dry Goods",
      image: "assets/png/logo.png",
      price: 4.20,
      rating: 4.6,
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ScafoldBackground,
      appBar: CustomAppBar(title: 'All Brands'),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SearchBar(hintText: "Search in brands..."),
            SizedBox(height: 15),
            Expanded(
              child: GridView.builder(
                itemCount: brands.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 18,
                  crossAxisSpacing: 18,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  return BrandItem(
                    imagePath: brands[index].image,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => CategoryBrand(
                            brandName: brands[index].name,
                            products: sampleBrandProducts,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
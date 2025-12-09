part of '../../../categories_imports.dart';

class CategoriesSection extends StatelessWidget {
  CategoriesSection({super.key});

  final List<CategoryModel> demoProducts = [
    CategoryModel(
      title: "AL ALALI CHOICE PINEAPPLE",
      category: "General Food",
      image: "assets/png/product.png",
      price: 7.75,
      rating: 4,
    ),
    CategoryModel(
      title: "Fresh Milk Bottle",
      category: "Frozen & Chilled",
      image: "assets/png/product.png",
      price: 12.00,
      rating: 5,
    ),
    CategoryModel(
      title: "AL ALALI CHOICE PINEAPPLE",
      category: "General Food",
      image: "assets/png/product.png",
      price: 7.75,
      rating: 4,
    ),
    CategoryModel(
      title: "Fresh Milk Bottle",
      category: "Frozen & Chilled",
      image: "assets/png/product.png",
      price: 12.00,
      rating: 5,
    ),
    CategoryModel(
      title: "AL ALALI CHOICE PINEAPPLE",
      category: "General Food",
      image: "assets/png/product.png",
      price: 7.75,
      rating: 4,
    ),
    CategoryModel(
      title: "Fresh Milk Bottle",
      category: "Frozen & Chilled",
      image: "assets/png/product.png",
      price: 12.00,
      rating: 5,
    ),
  ];

  late final List<Map<String, dynamic>> categorySections = [
    {
      "sectionTitle": "General Food",
      "items": [
        CategoryItemModel(
          title: "Frozen & Chilled",
          imagePath: "assets/png/forget_image.png",
          backgroundColor: const Color(0xfffde8ec),
          products: demoProducts,
        ),
        CategoryItemModel(
          title: "Frozen & Chilled",
          imagePath: "assets/png/forget_image.png",
          backgroundColor: const Color(0xfffde8ec),
          products: demoProducts,
        ),
        CategoryItemModel(
          title: "Frozen & Chilled",
          imagePath: "assets/png/forget_image.png",
          backgroundColor: const Color(0xfffde8ec),
          products: demoProducts,
        ),
      ],
    },
    {
      "sectionTitle": "Fresh Food & Deli",
      "items": [
        CategoryItemModel(
          title: "Butchery & Poultry",
          imagePath: "assets/png/forget_image.png",
          backgroundColor: const Color(0xfffde8ec),
          products: demoProducts,
        ),
        CategoryItemModel(
          title: "Fresh Bakery",
          imagePath: "assets/png/forget_image.png",
          backgroundColor: Color(0xfffde8ec),
          products: demoProducts,
        ),
        CategoryItemModel(
          title: "Fruits & Vegetables",
          imagePath: "assets/png/forget_image.png",
          backgroundColor: const Color(0xfffde8ec),
          products: demoProducts,
        ),
        CategoryItemModel(
          title: "Seafood",
          imagePath: "assets/png/forget_image.png",
          backgroundColor: const Color(0xfffde8ec),
          products: demoProducts,
        ),
        CategoryItemModel(
          title: "Fruits & Vegetables",
          imagePath: "assets/png/forget_image.png",
          backgroundColor: const Color(0xfffde8ec),
          products: demoProducts,
        ),
        CategoryItemModel(
          title: "Seafood",
          imagePath: "assets/png/forget_image.png",
          backgroundColor: const Color(0xfffde8ec),
          products: demoProducts,
        ),
      ],
    },
    {
      "sectionTitle": "Bakery",
      "items": [
        CategoryItemModel(
          title: "Saninne",
          imagePath: "assets/png/forget_image.png",
          backgroundColor: const Color(0xfffde8ec),
          products: demoProducts,
        ),
        CategoryItemModel(
          title: "Modern Bakery",
          imagePath: "assets/png/forget_image.png",
          backgroundColor: const Color(0xfffde8ec),
          products: demoProducts,

        ),
        CategoryItemModel(
          title: "Golden Spike",
          imagePath: "assets/png/forget_image.png",
          backgroundColor: const Color(0xfffde8ec),
          products: demoProducts,
        ),
      ],
    },
    {
      "sectionTitle": "Beverages",
      "items": [
        CategoryItemModel(
          title: "Saninne",
          imagePath: "assets/png/forget_image.png",
          backgroundColor: const Color(0xfffde8ec),
          products: demoProducts,
        ),
        CategoryItemModel(
          title: "Modern Bakery",
          imagePath: "assets/png/forget_image.png",
          backgroundColor: const Color(0xfffde8ec),
          products: demoProducts,
        ),
        CategoryItemModel(
          title: "Golden Spike",
          imagePath: "assets/png/forget_image.png",
          backgroundColor: const Color(0xfffde8ec),
          products: demoProducts,
        ),
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: categorySections.length,
        itemBuilder: (context, sectionIndex) {
          final section = categorySections[sectionIndex];
          final List<CategoryItemModel> items = (section["items"] as List)
              .cast<CategoryItemModel>();

          return Container(
            margin: const EdgeInsets.symmetric(vertical: AppSizes.p8),
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.p16,
              vertical: AppSizes.p4,
            ),
            decoration: BoxDecoration(
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                  color: AppColors.grey,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      section["sectionTitle"],
                      textStyle: const TextStyle(
                        fontSize: AppSizes.fs20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const CustomText(
                      "See all",
                      textStyle: TextStyle(
                        color: AppColors.primary,
                        fontSize: AppSizes.fs14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSizes.h12),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: AppSizes.p16),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(50),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => CategoryTypePage(products: item.products),
                              ),
                            );
                          },
                          child: CategoryItemCircle(item: item, size: 100),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

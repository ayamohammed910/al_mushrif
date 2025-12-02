part of '../../categories_imports.dart';

class CategoriesSection extends StatelessWidget {
  CategoriesSection({super.key});

  final List<Map<String, dynamic>> categorySections = [
    {
      "sectionTitle": "General Food",
      "items": [
        CategoryItemModel(
          title: "Frozen & Chilled",
          imagePath: "assets/png/forget_image.png",
          backgroundColor: const Color(0xfffde8ec),
        ),
        CategoryItemModel(
          title: "Dairy Products",
          imagePath: "assets/png/forget_image.png",
          backgroundColor: const Color(0xfffde8ec),
        ),
        CategoryItemModel(
          title: "Diet & Diabetic",
          imagePath: "assets/png/forget_image.png",
          backgroundColor: Color(0xfffde8ec),
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
        ),
        CategoryItemModel(
          title: "Fresh Bakery",
          imagePath: "assets/png/forget_image.png",
          backgroundColor: Color(0xfffde8ec),
        ),
        CategoryItemModel(
          title: "Fruits & Vegetables",
          imagePath: "assets/png/forget_image.png",
          backgroundColor: const Color(0xfffde8ec),
        ),
        CategoryItemModel(
          title: "Seafood",
          imagePath: "assets/png/forget_image.png",
          backgroundColor: const Color(0xfffde8ec),
        ),
        CategoryItemModel(
          title: "Fruits & Vegetables",
          imagePath: "assets/png/forget_image.png",
          backgroundColor: const Color(0xfffde8ec),
        ),
        CategoryItemModel(
          title: "Seafood",
          imagePath: "assets/png/forget_image.png",
          backgroundColor: const Color(0xfffde8ec),
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
        ),
        CategoryItemModel(
          title: "Modern Bakery",
          imagePath: "assets/png/forget_image.png",
          backgroundColor: const Color(0xfffde8ec),
        ),
        CategoryItemModel(
          title: "Golden Spike",
          imagePath: "assets/png/forget_image.png",
          backgroundColor: const Color(0xfffde8ec),
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
        ),
        CategoryItemModel(
          title: "Modern Bakery",
          imagePath: "assets/png/forget_image.png",
          backgroundColor: const Color(0xfffde8ec),
        ),
        CategoryItemModel(
          title: "Golden Spike",
          imagePath: "assets/png/forget_image.png",
          backgroundColor: const Color(0xfffde8ec),
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
            margin: const EdgeInsets.symmetric(vertical: 8),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
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
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const CustomText(
                      "See all",
                      textStyle: TextStyle(color: Colors.red, fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: CategoryItemCircle(item: item, size: 100)
                        ,

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

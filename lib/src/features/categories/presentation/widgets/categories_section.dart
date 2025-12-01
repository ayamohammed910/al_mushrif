part of '../../categories_imports.dart';
class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  final List<Map<String, dynamic>> categorySections = const [
    {
      "sectionTitle": "General Food",
      "items": [
        CategoryModel(
          title: "Frozen & Chilled",
          image: "assets/png/forget_image.png",
          bg: Color(0xfffde8ec),
        ),
        CategoryModel(
          title: "Dairy Products",
          image: "assets/png/forget_image.png",
          bg: Color(0xfffde8ec),
        ),
        CategoryModel(
          title: "Diet & Diabetic",
          image: "assets/png/forget_image.png",
          bg: Color(0xfffde8ec),
        ),
      ],
    },
    {
      "sectionTitle": "Fresh Food & Deli",
      "items": [
        CategoryModel(
          title: "Butchery & Poultry",
          image: "assets/png/forget_image.png",
          bg: Color(0xfffde8ec),
        ),
        CategoryModel(
          title: "Fresh Bakery",
          image: "assets/png/forget_image.png",
          bg: Color(0xfffde8ec),
        ),
        CategoryModel(
          title: "Fruits & Vegetables",
          image: "assets/png/forget_image.png",
          bg: Color(0xfffde8ec),
        ),
        CategoryModel(
          title: "Seafood",
          image: "assets/png/forget_image.png",
          bg: Color(0xfffde8ec),
        ),
        CategoryModel(
          title: "Fruits & Vegetables",
          image: "assets/png/forget_image.png",
          bg: Color(0xfffde8ec),
        ),
        CategoryModel(
          title: "Seafood",
          image: "assets/png/forget_image.png",
          bg: Color(0xfffde8ec),
        ),
      ],
    },
    {
      "sectionTitle": "Bakery",
      "items": [
        CategoryModel(
          title: "Saninne",
          image: "assets/png/forget_image.png",
          bg: Color(0xfffde8ec),
        ),
        CategoryModel(
          title: "Modern Bakery",
          image: "assets/png/forget_image.png",
          bg: Color(0xfffde8ec),
        ),
        CategoryModel(
          title: "Golden Spike",
          image: "assets/png/forget_image.png",
          bg: Color(0xfffde8ec),
        ),
      ],
    },
    {
      "sectionTitle": "Beverages",
      "items": [
        CategoryModel(
          title: "Saninne",
          image: "assets/png/forget_image.png",
          bg: Color(0xfffde8ec),
        ),
        CategoryModel(
          title: "Modern Bakery",
          image: "assets/png/forget_image.png",
          bg: Color(0xfffde8ec),
        ),
        CategoryModel(
          title: "Golden Spike",
          image: "assets/png/forget_image.png",
          bg: Color(0xfffde8ec),
        ),
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ListView.builder(
        itemCount: categorySections.length,
        itemBuilder: (context, sectionIndex) {
          final section = categorySections[sectionIndex];
          final List<CategoryModel> items =
          section["items"] as List<CategoryModel>;
          return Card(
            color: Colors.white,
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
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
                        textStyle: TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                        ),
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
                          child: CategoryItemCircle(
                            imagePath: item.image,
                            backgroundColor: item.bg,
                            title: item.title,
                            size: 100,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

part of '../../home_imports.dart';

class CategoriesGridview extends StatelessWidget {
  // If you want dynamic items, you can pass a smaller list and repeat them
  final List<Map<String, dynamic>> items;

  const CategoriesGridview({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> allItems = List.generate(
      10,
      (index) => items[index % items.length],
    );

    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: allItems.length, // 20 items
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        mainAxisSpacing: 30,
        crossAxisSpacing: 12,
        childAspectRatio: 0.6,
      ),
      itemBuilder: (context, index) {
        final item = allItems[index];
        return Expanded(
          child: CategoryItemCircle(
            imagePath: item['image'],
            backgroundColor: item['color'],
            title: item['title'],
            size: double.infinity,
          ),
        );
      },
    );
  }
}

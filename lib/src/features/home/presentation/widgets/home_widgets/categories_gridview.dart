part of '../../../home_imports.dart';
class CategoriesGridview extends StatelessWidget {
  final List<CategoryItemModel> items;

  late final List<CategoryItemModel> allItems = List.generate(
    10,
        (index) => items[index % items.length],
  );

  CategoriesGridview({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: allItems.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        mainAxisSpacing: 30,
        crossAxisSpacing: 12,
        childAspectRatio: 0.6,
      ),
      itemBuilder: (context, index) {
        final item = allItems[index];
        return CategoryItemCircle(
          item: item,
          size: double.infinity,
        );
      },
    );
  }
}
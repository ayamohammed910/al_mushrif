part of '../../../categories_imports.dart';

class CategoryOptions extends StatelessWidget {
  final List<CategoryItemModel> items;

  const CategoryOptions({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.h130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return CategoryItemCircle(item: item, size: 80);
        },
      ),
    );
  }
}

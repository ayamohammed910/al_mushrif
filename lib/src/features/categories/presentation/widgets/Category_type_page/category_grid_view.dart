part of '../../../categories_imports.dart';

class CategoryGridView extends StatelessWidget {
  final List<CategoryModel> categoryModels;

  const CategoryGridView({super.key, required this.categoryModels});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.h12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.70,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemCount: categoryModels.length,
      itemBuilder: (_, index) {
        final item = categoryModels[index];
        return CategoryItemCard(categoryModel: item);
      },
    );
  }
}

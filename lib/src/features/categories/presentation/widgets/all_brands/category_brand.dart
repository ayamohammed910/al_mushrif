part of '../../../categories_imports.dart';
class CategoryBrand extends StatelessWidget {
  final String brandName;
  final List<CategoryModel> products;

  const CategoryBrand({
    Key? key,
    required this.brandName,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ScafoldBackground,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Brand $brandName",
          style: const TextStyle(
            color: AppColors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.p8),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: AppSizes.p12,
            crossAxisSpacing: AppSizes.p12,
            childAspectRatio: 0.68,
          ),
          itemBuilder: (context, index) {
            return CategoryItemCard(
              categoryModel: products[index],
              onTap: () {
                // optional
              },
              onFavoriteTap: () {
                // optional
              },
            );
          },
        ),
      ),
    );
  }
}
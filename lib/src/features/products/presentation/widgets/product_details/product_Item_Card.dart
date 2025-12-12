part of '../../../products_imports.dart';
class ProductItemCard extends StatelessWidget {
  final ProductModel productModel;
  final VoidCallback? onTap;
  final VoidCallback? onFavoriteTap;

  const ProductItemCard({
    super.key,
    required this.productModel,
    this.onTap,
    this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(AppSizes.p8),
        padding: const EdgeInsets.all(AppSizes.p10),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 6,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    productModel.image,
                    height: AppSizes.h120,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: InkWell(
                    onTap: onFavoriteTap,
                    child: SvgPicture.asset("assets/svg/empty_fav_icon.svg"),
                  ),
                ),
              ],
            ),
            SizedBox(height: AppSizes.h8),
            Text(
              productModel.category,
              style: const TextStyle(
                fontSize: AppSizes.fs12,
                color: AppColors.grey,
              ),
            ),
            const SizedBox(height: AppSizes.h4),
            Text(
              productModel.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: AppSizes.fs14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppSizes.h8),
            Row(
              children: List.generate(
                5,
                    (index) => Icon(
                  Icons.star,
                  size: 14,
                  color: index < productModel.rating
                      ? AppColors.yellow
                      : AppColors.grey,
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${productModel.price} / PCS",
                  style: const TextStyle(
                    fontSize: AppSizes.fs14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
                InkWell(
                  onTap: () => _showProductDialog(context),
                  child: const Icon(Icons.shopping_bag_outlined, size: 24),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> _showProductDialog(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => CartDialog(),
    );
  }
}

class ProductModel {
  final String title;
  final String category;
  final String image;
  final double price;
  final double rating;
  final bool isFavorite;

  ProductModel({
    required this.title,
    required this.category,
    required this.image,
    required this.price,
    this.rating = 0,
    this.isFavorite = false,
  });
}

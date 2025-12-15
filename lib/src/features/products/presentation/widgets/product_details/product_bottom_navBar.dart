part of '../../../products_imports.dart';
class ProductBottomNavbar extends StatelessWidget {
  const ProductBottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    List<CartItemModel> cartItems = [
      CartItemModel(
        rating:4.0,
        name: "DAVIDOFF Rich Aroma Instant Coffee - 100g",
        imageUrl: "assets/png/product.png",
        price: 28.95,
        quantity: 1,

      ),
      CartItemModel(
        rating:2.5,
        name: "Pineapple Jumbo Pieces",
        imageUrl: "assets/png/product.png",
        price: 14.95,
        quantity: 3,
      ),
    ];
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.p20, vertical: AppSizes.p16),
      color: AppColors.white,
      child: Row(
        children: [
          Expanded(
            child: CustomButton(text: 'Add To Cart',
              onPressed: () {
              CartBottomSheet.showCartBottomSheet(context, cartItems);
            },
            ),
          ),
          const SizedBox(width: AppSizes.w16),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CustomText(
                "Total",
                textStyle: TextStyle(
                  fontSize: AppSizes.fs14,
                  color: AppColors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 4),
              CustomText(
                "₫14.95",
                textStyle: TextStyle(
                  fontSize: AppSizes.fs16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

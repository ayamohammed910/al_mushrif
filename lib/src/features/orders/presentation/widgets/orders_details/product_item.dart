part of '../../../orders_imports.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSizes.p12),
      padding: const EdgeInsets.all(AppSizes.p12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.ScafoldBackground),
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/png/product.png",
            width: AppSizes.w20,
            height: AppSizes.h20,
          ),
          const SizedBox(width: AppSizes.w12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  "Al Islami Cooking Shrimps 1kg",
                  textStyle: TextStyle(
                    fontSize: AppSizes.fs12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: AppSizes.h4),
                Row(
                  children: [
                    for (int i = 1; i <= 5; i++)
                      Icon(
                        Icons.star,
                        size: 10,
                        color: i <= 4 ? AppColors.yellow : AppColors.grey,
                      ),
                  ],
                ),
                SizedBox(height: AppSizes.h4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      "Đ 34.00",
                      textStyle: TextStyle(color: AppColors.primary),
                    ),
                    CustomText(
                      "Qnt:1",
                      textStyle: TextStyle(color: AppColors.black),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomText(
                      "Total: ",
                      textStyle: TextStyle(color: AppColors.black),
                    ),
                    CustomText(
                      "Đ 34.00",
                      textStyle: TextStyle(color: AppColors.primary),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

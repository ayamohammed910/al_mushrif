part of '../../../cart_imports.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.p16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            "Products",
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: AppSizes.fs16,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.all(AppSizes.p16),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: AppColors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RowOrderInfo(data: "AL Mushrif Coop", title: "Sold By: "),
                const SizedBox(height: AppSizes.h12),
                const ProductItem(),
                const ProductItem(),
                const ProductItem(),
                const ProductItem(),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TrackOrderPage(),
                          ),
                        );
                      },

                      child: Row(
                        children: [
                          const CustomText(
                            "Track Order ",
                            textStyle: TextStyle(color: AppColors.primary),
                          ),
                         Icon(Icons.arrow_forward,color: AppColors.primary,)
                        ],
                      ),
                    ),

                    const CustomText(
                      "Cancelled",
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
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

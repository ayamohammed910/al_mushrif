part of '../../../products_imports.dart';

class ProductDatailsInfo extends StatefulWidget {
  final String category;
  final String title;
  final double price;
  final String seller;
  final double rating;
  final int reviews;

  const ProductDatailsInfo({
    super.key,
    required this.category,
    required this.title,
    required this.price,
    required this.seller,
    required this.rating,
    required this.reviews,
  });

  @override
  State<ProductDatailsInfo> createState() => _ProductDatailsInfoState();
}

class _ProductDatailsInfoState extends State<ProductDatailsInfo> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: AppSizes.h10),

        CustomText(
          widget.category,
          textStyle: const TextStyle(color: AppColors.grey),
        ),
        CustomText(
          widget.title,
          textStyle: const TextStyle(
            fontSize: AppSizes.fs20,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: AppSizes.h8),
        Row(
          children: [
            for (int i = 1; i <= 5; i++)
              Icon(
                Icons.star,
                size: 20,
                color: i <= widget.rating ? AppColors.yellow : AppColors.grey,
              ),
            const SizedBox(width: AppSizes.w8),
            CustomText(
              "(${widget.reviews} Reviews)",
              textStyle: const TextStyle(color: AppColors.grey),
            ),
          ],
        ),

        const SizedBox(height: AppSizes.h8),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomText(
              "₫14.95",
              textStyle: TextStyle(
                fontSize: AppSizes.fs20,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
            const SizedBox(width: AppSizes.w8), // space between the texts
            CustomText(
              "/ PCS",
              textStyle: TextStyle(
                fontSize: AppSizes.fs20,
                color: AppColors.black,
              ),
            ),
          ],
        ),

        const SizedBox(height: AppSizes.h20),

        Container(
          height: AppSizes.h80,
          width: double.infinity,
          padding: const EdgeInsets.all(AppSizes.p16),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.ScafoldBackground),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                "Sold By :",
                textStyle: const TextStyle(
                  fontSize: AppSizes.fs14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.grey,
                ),
              ),
              CustomText(
                widget.seller,
                textStyle: const TextStyle(
                  fontSize: AppSizes.fs16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: AppSizes.h20),


        const SizedBox(height: 10),

        Container(
          height: AppSizes.h80,
          padding: const EdgeInsets.all(AppSizes.p16),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.ScafoldBackground),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Left side: Label
              CustomText(
                "Quantity:",
                textStyle: const TextStyle(
                  fontSize: AppSizes.fs18,
                  color: AppColors.grey,
                ),
              ),

              // Right side: Counter
              Row(
                children: [
                  QtyButton(
                    icon: Icons.remove,
                    onTap: () {
                      if (quantity > 1) setState(() => quantity--);
                    },
                  ),
                  const SizedBox(width: AppSizes.w16),
                  CustomText(
                    quantity.toString(),
                    textStyle: const TextStyle(
                      fontSize: AppSizes.fs20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: AppSizes.w16),
                  QtyButton(
                    icon: Icons.add,
                    onTap: () {
                      setState(() => quantity++);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),

        const SizedBox(height: 25),
      ],
    );
  }
}

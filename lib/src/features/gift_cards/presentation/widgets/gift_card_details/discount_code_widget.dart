part of '../../../gift_cards_imports.dart';

class DiscountCodeWidget extends StatelessWidget {
  const DiscountCodeWidget({super.key});
  final String code = "78hxOUMflK";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: AppSizes.p16,
        horizontal: AppSizes.p16,
      ),
      decoration: BoxDecoration(
        color: Colors.red.withOpacity(0.50),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        children: [
          const CustomText(
            'Discount code',
            textStyle: TextStyle(
              color: AppColors.white,
              fontSize: AppSizes.fs16,
            ),
          ),
          const SizedBox(height: AppSizes.h8),

          Row(
            children: [
              const Spacer(),

              CustomText(
                code,
                textStyle: const TextStyle(
                  color: AppColors.yellow,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const Spacer(),

              GestureDetector(
                onTap: () {},
                child: const Icon(Icons.copy, color: AppColors.white, size: 20),
              ),
            ],
          ),

          const SizedBox(height: AppSizes.h8),

          const CustomText(
            'Applied on online Purchases',
            textStyle: TextStyle(
              color: AppColors.white,
              fontSize: AppSizes.fs14,
            ),
          ),
          const SizedBox(height: AppSizes.h10),
        ],
      ),
    );
  }
}

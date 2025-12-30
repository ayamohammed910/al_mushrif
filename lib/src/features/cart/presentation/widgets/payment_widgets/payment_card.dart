part of '../../../cart_imports.dart';

class PaymentCardItem extends StatelessWidget {
  final String title;
  final String image;
  final String value;
  final String selectedValue;
  final VoidCallback onTap;

  const PaymentCardItem({
    super.key,
    required this.title,
    required this.image,
    required this.value,
    required this.selectedValue,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = selectedValue == value;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: AppSizes.h80,
        padding: const EdgeInsets.all(AppSizes.p16),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary.withAlpha(80) : AppColors.white,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: isSelected ? AppColors.primary : Colors.white,
            width: isSelected ? 1.5 : 1,
          ),
        ),
        child: Row(
          children: [
            Icon(
              isSelected ? Icons.radio_button_checked : Icons.radio_button_off,
              color: isSelected ? AppColors.primary : AppColors.black,
            ),
            const SizedBox(width: AppSizes.w12),

            Expanded(
              child: CustomText(
                title,
                textStyle: const TextStyle(fontSize: AppSizes.fs18),
              ),
            ),

            Spacer(),
            Image.asset(image, height: AppSizes.h30, width: AppSizes.w30),
          ],
        ),
      ),
    );
  }
}

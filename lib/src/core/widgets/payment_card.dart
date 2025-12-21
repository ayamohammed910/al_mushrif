
import 'package:al_mushrif/src/core/utils/app_colors.dart';
import 'package:al_mushrif/src/core/utils/app_sizes.dart';
import 'package:al_mushrif/src/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class PaymentCard extends StatelessWidget {
  final String title;
  final String image;
  final String value;
  final String selectedValue;
  final VoidCallback onTap;

  const PaymentCard({
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
          color: isSelected
              ? AppColors.primary.withOpacity(0.5)
              : AppColors.white,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: isSelected ? AppColors.primary : Colors.grey.shade300,
            width: isSelected ? 1.5 : 1,
          ),
        ),
        child: Row(
          children: [
            Image.asset(image, height: AppSizes.h24),
            const SizedBox(width: AppSizes.w12),

            Expanded(
              child: CustomText(
                title,
                textStyle: const TextStyle(fontSize: AppSizes.fs18),
              ),
            ),

            Icon(
              isSelected ? Icons.radio_button_checked : Icons.radio_button_off,
              color: isSelected ? AppColors.primary : AppColors.black,
            ),
          ],
        ),
      ),
    );
  }
}

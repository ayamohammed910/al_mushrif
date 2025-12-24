import 'package:al_mushrif/src/core/utils/app_colors.dart';
import 'package:al_mushrif/src/core/utils/app_sizes.dart';
import 'package:al_mushrif/src/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isPrimary;
  final double? width;
  final double? hight;
  final Color color;
  final Color Textcolor;

  const CustomButton({
    super.key,
    required this.text,
     this.onPressed,
    this.isPrimary = true,
    this.width,
    this.hight,
    this.color=AppColors.primary,
    this.Textcolor=AppColors.white

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: AppSizes.h50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: isPrimary ? color: AppColors.grey,
          foregroundColor: isPrimary ? AppColors.white : AppColors.grey,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: CustomText(
          text,
          textStyle: TextStyle(
            fontSize: AppSizes.fs20,
            fontWeight: FontWeight.bold,
            color: Textcolor

          ),
        ),
      ),
    );
  }
}


import 'package:al_mushrif/src/core/utils/app_colors.dart';
import 'package:al_mushrif/src/core/utils/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final String? imagePath;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed, this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // show SVG only if provided
            if (imagePath != null) ...[
              SvgPicture.asset(
                imagePath!,
                height: 22,
                width: 22,
                color: AppColors.white,
              ),
              const SizedBox(width: 8),
            ],
            SizedBox(width: AppSizes.w10,),
            Text(
              text,
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(width: AppSizes.w20,),

          ],
        ),
      ),
    );
  }
}
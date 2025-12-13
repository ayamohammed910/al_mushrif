import 'package:al_mushrif/src/core/utils/app_colors.dart';
import 'package:al_mushrif/src/core/utils/app_sizes.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final int? maxLines;

  const CustomText(
      this.text, {
        super.key,
        this.textStyle,
        this.textAlign,
        this.maxLines,
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxLines,
      style: textStyle ??
          const TextStyle(
            fontSize: AppSizes.fs16,
            fontWeight: FontWeight.w500,
            color: AppColors.black,
          ),
    );
  }
}
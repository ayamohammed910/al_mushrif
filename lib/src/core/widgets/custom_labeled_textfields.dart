import 'package:al_mushrif/src/core/utils/app_sizes.dart';
import 'package:al_mushrif/src/core/widgets/custom_text.dart';
import 'package:al_mushrif/src/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class CustomLabeledTextfields extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;

  const CustomLabeledTextfields({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: AppSizes.h16),
        CustomText(label),
        const SizedBox(height: AppSizes.h10),
        CustomTextField(hint: hint, controller: controller),
      ],
    );
  }
}

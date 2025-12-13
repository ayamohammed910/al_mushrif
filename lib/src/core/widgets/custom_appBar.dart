
import 'package:al_mushrif/src/core/utils/app_colors.dart';
import 'package:al_mushrif/src/core/utils/app_sizes.dart';
import 'package:al_mushrif/src/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget
    implements PreferredSizeWidget {

  final String title;
  final VoidCallback? onBack;
  final bool showBack;

  const CustomAppBar({
    super.key,
    required this.title,
    this.onBack,
    this.showBack = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.ScafoldBackground,
      centerTitle: true,
      leading: showBack
          ? IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.black),
        onPressed: onBack ?? () => Navigator.pop(context),
      )
          : null,
      title: CustomText(
        title,
        textStyle: const TextStyle(
          fontSize: AppSizes.fs20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
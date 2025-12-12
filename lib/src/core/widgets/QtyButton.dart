import 'package:al_mushrif/src/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class QtyButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const QtyButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.primary,
      ),
      child: IconButton(
        icon: Icon(icon, color: AppColors.white),
        onPressed: onTap,
      ),
    );
  }
}

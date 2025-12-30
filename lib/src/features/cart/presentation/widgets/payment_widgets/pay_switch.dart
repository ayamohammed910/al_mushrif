part of '../../../cart_imports.dart';

class PaySwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const PaySwitch({super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!value),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: AppSizes.w50,
        height: AppSizes.h26,
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.p4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: value ? AppColors.primary : Colors.grey.shade300,
        ),
        child: Align(
          alignment: value ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            width: AppSizes.w24,
            height: AppSizes.h24,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}

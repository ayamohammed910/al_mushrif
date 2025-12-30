part of '../../../cart_imports.dart';

class DeliveryInstructionsItem extends StatelessWidget {
  final int index;
  final int selectedIndex;
  final IconData icon;
  final String text;
  final ValueChanged<int> onTap;

  const DeliveryInstructionsItem({
    Key? key,
    required this.index,
    required this.selectedIndex,
    required this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () => onTap(index),
      child: Container(
        width: AppSizes.w100,
        padding: const EdgeInsets.all(AppSizes.p12),
        decoration: BoxDecoration(
          color: isSelected ? Colors.red.shade100 : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? AppColors.primary : Colors.transparent,
            width: 1.5,
          ),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: AppSizes.w20,
                  height: AppSizes.h20,
                  decoration: BoxDecoration(
                    color: isSelected
                        ? AppColors.primary
                        : Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: isSelected
                          ? AppColors.primary
                          : Colors.grey.shade400,
                      width: 1.5,
                    ),
                  ),
                  child: isSelected
                      ? const Icon(
                          Icons.check,
                          size: 18,
                          color: AppColors.white,
                        )
                      : null,
                ),
                const SizedBox(width: AppSizes.w8),

                // Icon + Text
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: isSelected ? AppColors.primary : AppColors.grey,
                  size: 30,
                ),
                const SizedBox(height: AppSizes.h8),
                CustomText(
                  text,
                  textAlign: TextAlign.center,
                  textStyle: TextStyle(
                    fontSize: AppSizes.fs12,
                    color: isSelected ? AppColors.primary : AppColors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

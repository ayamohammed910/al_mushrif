part of '../../../cart_imports.dart';

class AllowItemsReplacement extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const AllowItemsReplacement({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.red.shade50,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: AppSizes.w24,
            height: AppSizes.h26,
            decoration: const BoxDecoration(
              color: AppColors.primary,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.priority_high,
              color: Colors.white,
              size: 18,
            ),
          ),

          const SizedBox(width: AppSizes.w12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CustomText(
                  "Allow Items Replacement",
                  textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
                SizedBox(height: AppSizes.h8),
                CustomText(
                  "We do our best to ensure all items are in stock. "
                  "picking your order, we want to get you what you need as quickly as possible",
                  textStyle: TextStyle(
                    fontSize: AppSizes.fs12,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),

          // 🔘 Switch
          PaySwitch(
            value: value,
            onChanged: (v) {
              onChanged(v);
              if (v) {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (_) => const ConfirmationBottomSheet(),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}

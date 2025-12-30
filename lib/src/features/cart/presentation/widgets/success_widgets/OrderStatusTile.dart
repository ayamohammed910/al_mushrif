part of '../../../cart_imports.dart';

class OrderStatusTile extends StatelessWidget {
  final String title;
  final String time;
  final bool isLast;

  const OrderStatusTile({
    super.key,
    required this.title,
    required this.time,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              height: AppSizes.h40,
              width: AppSizes.w40,
              decoration: const BoxDecoration(
                color: AppColors.primary,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.check_circle_outline_sharp,
                color: Colors.white,
                size: 25,
              ),
            ),
            if (!isLast)
              Container(
                width: AppSizes.w4,
                height: AppSizes.h80,
                color: AppColors.primary,
              ),
          ],
        ),

        const SizedBox(width: AppSizes.w16),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              title,
              textStyle: const TextStyle(
                fontSize: AppSizes.fs18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppSizes.h4),
            CustomText(
              time,
              textStyle: TextStyle(
                color: AppColors.grey,
                fontSize: AppSizes.fs14,
              ),
            ),
            const SizedBox(height: AppSizes.h20),
          ],
        ),
      ],
    );
  }
}

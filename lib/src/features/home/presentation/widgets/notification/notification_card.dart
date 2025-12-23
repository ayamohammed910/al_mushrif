part of '../../../home_imports.dart';

class NotificationCard extends StatelessWidget {
  final OrderModel order;

  const NotificationCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSizes.p12),
      padding: const EdgeInsets.all(AppSizes.p16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: AppSizes.w50,
            height: AppSizes.h50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: Image.asset('assets/png/logo.png'),
          ),
          const SizedBox(width: AppSizes.w12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  'Order code: ${order.id} has been ${order.status}',
                  textStyle: const TextStyle(fontSize: AppSizes.fs14),
                ),
                SizedBox(height: AppSizes.h8),
                CustomText(
                  "${order.date}  ${order.time}",
                  textStyle: TextStyle(
                    fontSize: AppSizes.fs12,
                    color: AppColors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

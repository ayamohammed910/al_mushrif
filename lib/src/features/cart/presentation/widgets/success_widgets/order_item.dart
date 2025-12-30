part of '../../../cart_imports.dart';

class OrderItem extends StatelessWidget {
  final OrderModel order;
  final VoidCallback? onReorder;

  const OrderItem({super.key, required this.order, this.onReorder});

  @override
  Widget build(BuildContext context) {
    final isCancelled = order.status == "Cancelled";
    final isPending = order.status == "Pending";

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/png/customer_products.png',
                width: AppSizes.w32,
                height: AppSizes.h32,
              ),
              const SizedBox(width: AppSizes.w12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      "Order  #${order.id}",
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: AppSizes.fs14,
                      ),
                    ),
                    const SizedBox(height: AppSizes.h4),
                    CustomText(
                      "${order.date} - ${order.time}",
                      textStyle: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: AppSizes.fs14,
                      ),
                    ),
                  ],
                ),
              ),
              CustomText(
                order.status,
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: isPending
                      ? AppColors.greenYellow
                      : isCancelled
                      ? AppColors.primary
                      : AppColors.greenYellow,
                ),
              ),
            ],
          ),
          if (isCancelled) ...[
            const SizedBox(height: AppSizes.h16),
            CustomOutlineButton(
              text: 'Reorder',
              onPressed: () {
                if (onReorder != null) {
                  onReorder!(); // null check
                }
              },
            ),
          ],
        ],
      ),
    );
  }
}

class OrderModel {
  final String id;
  final String date;
  final String time;
  final String status;
  final String customerName;
  final String email;
  final String shippingAddress;
  final double totalAmount;
  final String shippingMethod;
  final String paymentMethod;

  OrderModel({
    required this.id,
    required this.date,
    required this.time,
    required this.status,
    required this.customerName,
    required this.email,
    required this.shippingAddress,
    required this.totalAmount,
    required this.shippingMethod,
    required this.paymentMethod,
  });
}

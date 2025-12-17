part of '../../../orders_imports.dart';

class OrderInfoCard extends StatelessWidget {
  final OrderModel order;

  const OrderInfoCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.p16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                "Order No. : ",
                textStyle: TextStyle(color: AppColors.black),
              ),
              CustomText(
                order.id,
                textStyle: TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Divider(),
          RowOrderInfo(data: "${order.date}  ${order.time}", title: 'Date: '),
          SizedBox(height: AppSizes.h4),
          RowOrderInfo(data: order.status, title: 'Status: '),
          SizedBox(height: AppSizes.h4),
          RowOrderInfo(data: "7", title: 'Total Items: '),
          SizedBox(height: AppSizes.h4),
          RowOrderInfo(data: order.status, title: 'Receipt Status: '),
          SizedBox(height: AppSizes.h4),
          RowOrderInfo(data: "Abu Dhabi", title: 'Address: '),
          SizedBox(height: AppSizes.h4),
          RowOrderInfo(data: "+971121212121", title: 'Phone: '),
          SizedBox(height: AppSizes.h4),
          RowOrderInfo(data: "Wallet", title: 'Payment Method: '),
          SizedBox(height: AppSizes.h4),
        ],
      ),
    );
  }
}

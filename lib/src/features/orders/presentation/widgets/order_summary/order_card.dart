part of '../../../orders_imports.dart';
class OrderCard extends StatelessWidget {
  final OrderModel order;

  const OrderCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InfoRow("Order Code", order.id),
          InfoRow("Customer", order.customerName),
          InfoRow("E-mail", order.email),
          InfoRow("Shipping address", order.shippingAddress),
          InfoRow("Order Date", "${order.date} - ${order.time}"),
          InfoRow("Order Status", order.status),
          InfoRow(
            "Total order amount",
            "Ð ${order.totalAmount.toStringAsFixed(2)}",
            valueWeight: FontWeight.w600,
          ),
          InfoRow("Shipping method", order.shippingMethod),
          InfoRow("Payment Method", order.paymentMethod),
        ],
      ),
    );
  }
}
part of '../../../orders_imports.dart';

class OrderDetailsPage extends StatelessWidget {
  final OrderModel order;

  const OrderDetailsPage({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ScafoldBackground,
      appBar: CustomAppBar(title: "Order Details"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.p16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OrderInfoCard(order: order),
            const SizedBox(height: AppSizes.h16),
            const ProductsSection(),
            const SizedBox(height: AppSizes.h16),
            const InvoiceSummaryCard(),
          ],
        ),
      ),
    );
  }
}

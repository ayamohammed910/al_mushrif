part of '../../../orders_imports.dart';
class OrderSummaryPage extends StatelessWidget {
  final OrderModel order;

  const OrderSummaryPage({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ScafoldBackground,
      appBar: const CustomAppBar(title: 'Order summary'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.p16),
        child: Column(
          children: [
            OrderCard(order: order),
            const SizedBox(height: AppSizes.h16),
        Container(
          margin: const EdgeInsets.only(bottom: 16),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 6,
                offset: const Offset(0, 2),
              ),
            ],
          ),child: Column(
          children: [
            const ProductCard(
              name: "Al Islami Cooking Shrimps 1Kg",
              price: "34.00",
            ),
            Divider(height: 1,),
            const ProductCard(
              name: "DATE COOKIES PER PCS",
              price: "2.00",
            ),
          ],
        )),

            InvoiceSummaryCard()
          ],
        ),
      ),
    );
  }
}
part of '../../../orders_imports.dart';
class ProductCard extends StatelessWidget {
  final String name;
  final String price;

  const ProductCard({
    super.key,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InfoRow("Product", name, valueColor: Colors.red),
          const SizedBox(height: AppSizes.h12),
          const InfoRow("Quantity", "1"),
          const InfoRow(
            "Choose Delivery Type",
            "Delivery by app driver\n(Delivery within 50 minutes.)",
          ),
          InfoRow("Price", "৳ $price"),
        ],
    );
  }
}
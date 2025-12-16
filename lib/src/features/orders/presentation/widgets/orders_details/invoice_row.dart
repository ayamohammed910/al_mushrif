part of '../../../orders_imports.dart';
class InvoiceRow extends StatelessWidget {
  final String title;
  final String value;


  const InvoiceRow({
    super.key,
    required this.title,
    required this.value,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(title, textStyle: TextStyle(color: AppColors.black)),
          CustomText(
            value,
            textStyle: TextStyle(
              color: AppColors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
part of '../../../cart_imports.dart';
class InvoiceRow extends StatelessWidget {
  final String title;
  final String value;
  final IconData? icon;
  final VoidCallback? onTap;

  const InvoiceRow({
    super.key,
    required this.title,
    required this.value,
    this.icon, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          CustomText(
            title,
            textStyle: TextStyle(color: AppColors.black),
          ),

          /// Only show icon if not null
          if (icon != null) ...[
            const SizedBox(width: 6),
            GestureDetector(
              onTap: onTap,
                child: Icon(icon, size: 18, color: AppColors.grey)),
          ],

          const Spacer(),

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

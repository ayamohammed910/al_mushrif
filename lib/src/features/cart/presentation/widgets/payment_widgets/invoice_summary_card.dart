part of '../../../cart_imports.dart';
class InvoiceSummaryCard extends StatelessWidget {
  final Widget? footer;

  const InvoiceSummaryCard({
    super.key,
    this.footer,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.p16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            "Invoice Summary",
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: AppSizes.fs16,
            ),
          ),
          const SizedBox(height: AppSizes.h8),

          Container(
            padding: const EdgeInsets.all(AppSizes.p16),
            decoration: BoxDecoration(
              color: AppColors.white,
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
              children: [
                InvoiceRow(title: 'Sub Total', value: 'Đ 120.81'),
                InvoiceRow(
                  title: 'Shareholders ROP',
                  value: '- Đ 12.08',
                  icon: Icons.question_mark_rounded,
                  onTap: () {
                    showShareholderBottomSheet(context);
                  },
                ),
                InvoiceRow(
                  title: 'Service Fee',
                  value: 'Đ 6.00',
                  icon: Icons.question_mark_rounded,
                ),
                InvoiceRow(
                  title: 'Environment Fee',
                  value: 'Đ 2.00',
                  icon: Icons.question_mark_rounded,
                  onTap: () {
                    showFeesBottomSheet(context);
                  },
                ),
                InvoiceRow(
                  title: 'Delivery Fee',
                  value: 'Đ 0.00',
                  icon: Icons.question_mark_rounded,
                  onTap: () {
                    showDeliveryBottomSheet(context);
                  },
                ),
                InvoiceRow(title: 'Total VAT', value: 'Đ 6.44'),

                const Divider(),
                InvoiceRow(title: 'Total', value: 'Đ 123.17'),

                if (footer != null) ...[
                  const SizedBox(height: 12),
                  footer!,
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  void showFeesBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => const FeesBottomSheet(),
    );
  }

  void showShareholderBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => const ShareholderBottomSheet(),
    );
  }

  void showDeliveryBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => const DeliveryBottomSheet(),
    );
  }
}
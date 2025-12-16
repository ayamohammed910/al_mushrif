part of '../../../orders_imports.dart';

class InvoiceSummaryCard extends StatelessWidget {
  const InvoiceSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        InkWell(
          onTap: () {
            showFeesBottomSheet(context);
          },
          child: Container(
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
                InvoiceRow(title: 'Service Fee', value: 'Đ 6.00'),
                InvoiceRow(title: 'Environment Fee', value: 'Đ 2.00'),
                InvoiceRow(title: 'Delivery Fee', value: 'Đ 0.00'),
                InvoiceRow(title: 'Total VAT', value: 'Đ 6.44'),
                InvoiceRow(title: 'Shareholders Discount', value: '- Đ 12.08'),

                const Divider(),
                InvoiceRow(title: 'Total', value: 'Đ 123.17'),

                const SizedBox(height: 8),
                const Divider(),

                InvoiceRow(title: 'Bezat points earned', value: '1208'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

void showFeesBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return const FeesBottomSheet();
    },
  );
}

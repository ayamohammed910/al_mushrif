part of '../../wallet_imports.dart';

class PaymentMethodBottomSheet extends StatefulWidget {
  final String? selectedMethod;

  const PaymentMethodBottomSheet({super.key, this.selectedMethod});

  @override
  State<PaymentMethodBottomSheet> createState() =>
      _PaymentMethodBottomSheetState();
}

class _PaymentMethodBottomSheetState extends State<PaymentMethodBottomSheet> {
  String? selected;

  @override
  void initState() {
    super.initState();
    selected = widget.selectedMethod;
  }

  void _onSelect(String value) {
    if (selected == value) {
      Navigator.pop(context, null);
    } else {
      Navigator.pop(context, value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSizes.p16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Spacer(),
              CustomText(
                "Select payment method",
                textStyle: TextStyle(
                  fontSize: AppSizes.fs20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),

              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),

          const SizedBox(height: AppSizes.h16),

          RadioItem(
            title: "Recharge",
            value: "Telr",
            groupValue: selected,
            onTap: _onSelect,
          ),

          const SizedBox(height: AppSizes.h12),


        ],
      ),
    );
  }
}

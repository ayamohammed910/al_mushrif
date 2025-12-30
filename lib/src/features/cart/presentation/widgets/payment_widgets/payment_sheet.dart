
import 'package:al_mushrif/src/core/utils/app_colors.dart';
import 'package:al_mushrif/src/core/utils/app_sizes.dart';
import 'package:al_mushrif/src/core/widgets/custom_button.dart';
import 'package:al_mushrif/src/core/widgets/custom_text.dart';
import 'package:al_mushrif/src/core/widgets/payment_card.dart';
import 'package:flutter/material.dart';

import '../../../cart_imports.dart' show PaymentCardItem;
class PaymentSheet extends StatefulWidget {
  final String initialMethod;

  const PaymentSheet({super.key, this.initialMethod = "Pay Online"});

  @override
  State<PaymentSheet> createState() => _PaymentBottomSheetState();
}

class _PaymentBottomSheetState extends State<PaymentSheet> {
  late String selectedMethod;

  @override
  void initState() {
    super.initState();
    selectedMethod = widget.initialMethod;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 20),
      decoration: const BoxDecoration(
        color: AppColors.ScafoldBackground,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: AppSizes.w40,
            height: AppSizes.h4,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(height: AppSizes.h12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 2),
              const CustomText(
                "Payment Methods",
                textStyle: TextStyle(
                  fontSize: AppSizes.fs20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          const SizedBox(height: 10),
          PaymentCardItem(
            title: "Pay Online",
            image: "assets/png/PayMob.png",
            value: "Pay Online",
            selectedValue: selectedMethod,
            onTap: () {
              setState(() {
                selectedMethod = "Pay Online";
              });
            },
          ),
          const SizedBox(height: 10),
          PaymentCardItem(
            title: "Cash On Delivery",
            image: "assets/png/cash.png",
            value: "Cash On Delivery",
            selectedValue: selectedMethod,
            onTap: () {
              setState(() {
                selectedMethod = "Cash On Delivery";
              });
            },
          ),
          const SizedBox(height: AppSizes.h20),
          CustomButton(
            text: 'Confirm',
            onPressed: () {
              Navigator.pop(context, selectedMethod);
            },
          ),
        ],
      ),
    );
  }
}
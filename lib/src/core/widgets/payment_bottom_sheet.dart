
import 'package:al_mushrif/src/core/utils/app_colors.dart';
import 'package:al_mushrif/src/core/utils/app_sizes.dart';
import 'package:al_mushrif/src/core/widgets/custom_button.dart';
import 'package:al_mushrif/src/core/widgets/custom_text.dart';
import 'package:al_mushrif/src/core/widgets/payment_card.dart';
import 'package:flutter/material.dart';

class PaymentBottomSheet extends StatefulWidget {
  const PaymentBottomSheet({super.key});

  @override
  State<PaymentBottomSheet> createState() => _PaymentBottomSheetState();
}

class _PaymentBottomSheetState extends State<PaymentBottomSheet> {
  String selectedMethod = "telr";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10),
            ),
          ),

          const SizedBox(height: AppSizes.h12),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex: 2,),
              const CustomText(
                "Select payment method",
                textStyle: TextStyle(
                  fontSize: AppSizes.fs20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),

          const SizedBox(height: 10),

          PaymentCard(
            title: "Pay Online",
            image: "assets/png/telr.png",
            value: "telr",
            selectedValue: selectedMethod,
            onTap: () {
              setState(() {
                selectedMethod = "telr";
              });
            },
          ),
          const SizedBox(height: 10),

          PaymentCard(
            title: "Wallet Payment",
            image: "assets/png/wallet.png",
            value: "wallet",
            selectedValue: selectedMethod,
            onTap: () {
              setState(() {
                selectedMethod = "wallet";
              });
            },
          ),
          const SizedBox(height: AppSizes.h20),
          CustomButton(
            text: 'Process Payment',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

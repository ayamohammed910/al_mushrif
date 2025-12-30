part of '../../../cart_imports.dart';

class GiftCardBottomSheet extends StatefulWidget {
  const GiftCardBottomSheet({super.key});

  @override
  State<GiftCardBottomSheet> createState() => _GiftCardBottomSheetState();
}

class _GiftCardBottomSheetState extends State<GiftCardBottomSheet> {
  final TextEditingController giftCardController = TextEditingController();
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.p16),
      child: Container(
        color: AppColors.ScafoldBackground,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  const CustomText(
                    'Apply Gift Card',
                    textStyle: TextStyle(
                      fontSize: AppSizes.fs20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    icon: const Icon(Icons.close, color: AppColors.black),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
          
              const SizedBox(height: AppSizes.h12),
              TextFieldBottomSheet(
                hint: "Enter Gift Card Code",
                controller: giftCardController,
                onApply: () {
                  // apply logic
                },
              ),
          
              const SizedBox(height: AppSizes.h8),
          
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(Icons.info_rounded, color: AppColors.primary, size: 25),
                  SizedBox(width: AppSizes.w8),
                  Expanded(
                    child: CustomText(
                      'Note that the remaining of gift card value will add to your wallet balance so you can use it in next orders',
                      textStyle: TextStyle(
                        fontSize: AppSizes.fs14,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ],
              ),
          
              const SizedBox(height: AppSizes.h16),
              InvoiceSummaryCard(),
              const SizedBox(height: 12),
          
              Row(
                children: [
                  Checkbox(
                    value: agree,
                    onChanged: (v) {
                      setState(() => agree = v ?? false);
                    },
                    activeColor: AppColors.primary,
                    checkColor: Colors.white,
                    side: BorderSide(color: AppColors.primary, width: 2),
                  ),
                  const SizedBox(width: AppSizes.w2),
                  CustomText(
                    "Agree",
                    textStyle: TextStyle(
                      color: AppColors.grey,
                      fontSize: AppSizes.fs16,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: CustomText(
                      "Terms and Conditions",
                      textStyle: TextStyle(
                        color: AppColors.black,
                        fontSize: AppSizes.fs16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              CustomButton(
                text: "Submit Order",
                onPressed: agree
                    ? () {
                        Navigator.pop(context);
                      }
                    : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

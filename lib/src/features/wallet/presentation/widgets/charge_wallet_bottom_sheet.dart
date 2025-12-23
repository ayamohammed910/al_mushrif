part of '../../wallet_imports.dart';

class ChargeWalletBottomSheet extends StatefulWidget {
  const ChargeWalletBottomSheet({super.key});

  @override
  State<ChargeWalletBottomSheet> createState() =>
      _ChargeWalletBottomSheetState();
}

class _ChargeWalletBottomSheetState extends State<ChargeWalletBottomSheet> {
  String? selectedPaymentMethod;
  final TextEditingController amount_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSizes.p16),
      child: Container(
        color: AppColors.ScafoldBackground,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Spacer(),
                CustomText(
                  "Charge Wallet Balance",
                  textStyle: TextStyle(
                    fontSize: AppSizes.fs18,
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

            const CustomText(
              "Amount",
              textStyle: TextStyle(fontSize: AppSizes.fs18),
            ),
            const SizedBox(height: AppSizes.h8),
            CustomTextField(
              hint: "Enter Amount",
              controller: amount_controller,
            ),

            const SizedBox(height: AppSizes.h16),

            const CustomText(
              "Payment Method",
              textStyle: TextStyle(fontSize: AppSizes.fs18),
            ),
            const SizedBox(height: AppSizes.h8),

            InkWell(
              onTap: () {
                showModalBottomSheet<String>(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(24),
                    ),
                  ),
                  builder: (_) => PaymentMethodBottomSheet(
                    selectedMethod: selectedPaymentMethod,
                  ),
                ).then((result) {
                  if (result != null) {
                    setState(() {
                      selectedPaymentMethod = result;
                    });
                  }
                });
              },
              child: Container(
                height: AppSizes.h50,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(35),
                ),
                padding: const EdgeInsets.symmetric(horizontal: AppSizes.p20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      selectedPaymentMethod ?? "Select payment method",
                      textStyle: TextStyle(
                        fontSize: AppSizes.fs16,
                        color: selectedPaymentMethod == null
                            ? Colors.grey
                            : Colors.black,
                      ),
                    ),
                    Row(
                      children: [
                        if (selectedPaymentMethod != null)
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedPaymentMethod = null;
                              });
                            },
                            child: const Icon(
                              Icons.clear,
                              size: 20,
                              color: Colors.black,
                            ),
                          ),
                        const SizedBox(width: AppSizes.w8),
                        const Icon(Icons.keyboard_arrow_down_sharp),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: AppSizes.h24),

            CustomButton(text: "Continue To Payment", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}

part of '../../../cart_imports.dart';

class PaymentMethod extends StatefulWidget {
  final bool useWallet;
  final ValueChanged<bool> onWalletChanged;
  final String selectedMethod;
  final String selectedImage;
  final ValueChanged<String> onChangeTap;

  const PaymentMethod({
    Key? key,
    required this.useWallet,
    required this.onWalletChanged,
    required this.selectedMethod,
    required this.selectedImage,
    required this.onChangeTap,
  }) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.p16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            "Payment Method",
            textStyle: TextStyle(
              fontSize: AppSizes.fs16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: AppSizes.h10),
          Container(
            padding: const EdgeInsets.all(AppSizes.p16),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      widget.useWallet
                          ? "assets/png/wallet.png"
                          : widget.selectedImage,
                      width: AppSizes.w40,
                      height: AppSizes.h30,
                    ),
                    SizedBox(width: AppSizes.w10),
                    CustomText(
                      widget.useWallet ? "Wallet" : widget.selectedMethod,
                      textStyle: const TextStyle(
                        fontSize: AppSizes.fs14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () async {
                        final result = await showModalBottomSheet<String>(
                          context: context,
                          isScrollControlled: false,
                          backgroundColor: Colors.transparent,
                          builder: (context) => const PaymentSheet(),
                        );
                        if (result != null) {
                          widget.onChangeTap(result);
                        }
                      },
                      child: Row(
                        children: [
                          CustomText(
                            "Change",
                            textStyle: TextStyle(
                              color: AppColors.primary,
                              fontSize: AppSizes.fs16,
                            ),
                          ),
                          SizedBox(width: AppSizes.w5),
                          Icon(
                            Icons.arrow_forward_outlined,
                            color: AppColors.primary,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Divider(height: AppSizes.h30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset("assets/svg/wallet_icon.svg"),
                    SizedBox(width: 10),
                    const Text("Use Wallet Balance"),
                    Spacer(),
                    PaySwitch(
                      value: widget.useWallet,
                      onChanged: widget.onWalletChanged,
                    ),
                  ],
                ),

                Row(
                  children: [
                    SizedBox(width: AppSizes.w30),
                    CustomText(
                      "৳ 4,388.45",
                      textStyle: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: AppSizes.fs16,
                      ),
                    ),
                  ],
                ),

                const Divider(height: AppSizes.h30),
                GestureDetector(
                  onTap: () {
                    showCustomBottomSheet(context);
                  },
                  child: Row(
                    children: [
                      CustomText(
                        "Or Apply Gift Card",
                        textStyle: TextStyle(
                          color: AppColors.primary,
                          fontSize: AppSizes.fs16,
                        ),
                      ),
                      SizedBox(width: AppSizes.w5),
                      Icon(
                        Icons.arrow_forward_outlined,
                        color: AppColors.primary,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void showCustomBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return GiftCardBottomSheet();
      },
    );
  }
}

showPaymentBottomSheet(BuildContext context) {
  return showModalBottomSheet<String>(
    context: context,
    isScrollControlled: false,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return const PaymentSheet();
    },
  );
}

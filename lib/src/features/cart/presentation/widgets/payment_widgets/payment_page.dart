part of '../../../cart_imports.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int selectedInstruction = 1;
  bool useWallet = false;
  String selectedMethod = "Pay Online";
  String selectedImage = "assets/png/PayMob.png";
  bool allowReplacement = false;
  bool agree = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ScafoldBackground,
      appBar: CustomAppBar(title: "Cart", backgroundColor: AppColors.white),

      body: Column(
        children: [
          const CheckoutSteps(currentStep: 3),
          const SizedBox(height: AppSizes.h10),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  PaymentMethod(
                    useWallet: useWallet,
                    onWalletChanged: (v) => setState(() => useWallet = v),
                    selectedMethod: selectedMethod,
                    selectedImage: selectedImage,
                    onChangeTap: (result) {
                      setState(() {
                        selectedMethod = result;
                        selectedImage = result == "Pay Online"
                            ? "assets/png/PayMob.png"
                            : "assets/png/cash.png";
                      });
                    },
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Delivery Instructions (optional)",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  DeliveryInstructionsItem(
                                    index: 0,
                                    selectedIndex: selectedInstruction,
                                    icon: Icons.home,
                                    text: "Leave at door",
                                    onTap: (i) {
                                      setState(() {
                                        selectedInstruction = i;
                                      });
                                    },
                                  ),
                                  DeliveryInstructionsItem(
                                    index: 1,
                                    selectedIndex: selectedInstruction,
                                    icon: Icons.call_end,
                                    text: "Avoid Calling",
                                    onTap: (i) {
                                      setState(() {
                                        selectedInstruction = i;
                                      });
                                    },
                                  ),
                                  DeliveryInstructionsItem(
                                    index: 2,
                                    selectedIndex: selectedInstruction,
                                    icon: Icons.notifications_off,
                                    text: "Don't ring the bell",
                                    onTap: (i) {
                                      setState(() {
                                        selectedInstruction = i;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: AppSizes.h20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const CustomText(
                                "Notes for driver (optional)",
                                textStyle: TextStyle(
                                  fontSize: AppSizes.fs16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: AppSizes.h10),
                              TextField(
                                maxLines: 3,
                                decoration: InputDecoration(
                                  hintText: "Write notes here",
                                  filled: true,
                                  fillColor: AppColors.ScafoldBackground,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  InvoiceSummaryCard(),

                  Padding(
                    padding: const EdgeInsets.all(AppSizes.p16),
                    child:
                    AllowItemsReplacement(
                      value: allowReplacement,
                      onChanged: (v) {
                        setState(() {
                          allowReplacement = v;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSizes.p16),
            child: Column(
              children: [
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
                const SizedBox(height: AppSizes.w8),

                CustomText(
                  "Thank you for your order!",
                  textStyle: TextStyle(
                    color: AppColors.black,
                    fontSize: AppSizes.fs18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: AppSizes.w8),

                CustomButton(
                  text: "Submit Order",
                  onPressed: agree
                      ? () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SuccessPage(),
                      ),
                    );
                  }
                      : null,
                ),
              ],
            ),

          ),
        ],
      ),

    );
  }
}

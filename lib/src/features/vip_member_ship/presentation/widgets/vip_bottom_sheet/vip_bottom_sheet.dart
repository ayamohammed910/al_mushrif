part of '../../../vip_member_ship_imports.dart';

class VipBottomSheet extends StatefulWidget {
  const VipBottomSheet({Key? key}) : super(key: key);

  @override
  State<VipBottomSheet> createState() => _VipBottomSheetState();
}

class _VipBottomSheetState extends State<VipBottomSheet> {
  int selectedPlan = 1;
  bool agree = false;

  final List<MembershipModel> membershipPlans = [
    MembershipModel(
      title: "Shareholders' Tier",
      invite: "By invite only",
      price: "",
      value: 0,
      benefits: [
        "The Ultimate Convenience & Rewards Experience",
        "10% Instant Cashback: The highest reward level. cashback applied instantly at checkout on every purchase—no waiting!",
        "Unlimited Free Delivery: Never pay a delivery fee again.Enjoy ultimate convenience on all your orders.",
        "Shareholders-Only Special Promotions: Get first and exclusive access to our best deals, luxury items, and limited-time offers.",
        "All Executive Benefits: Including Exclusive Discounts, Early Access, Bonus Bezat Points, and Premium Offers.",
        "Who is it for? Designed for AMCOOP Shareholders.",
        "NB: The Shareholders benefits apply for purchases from Al Mushrif Coop only and not from other sellers on theAMCOOP application.",
      ],
    ),
    MembershipModel(
      title: "Executive Membership",
      price: "৳ 500.00 / Year",
      value: 1,
      benefits: [
        "2% Cashback Reward",
        "AED 40 Monthly Credit",
        "Exclusive discounts",
        "Early access to promotions",
        "20 complimentary delivery vouchers",
      ],
    ),
    MembershipModel(
      title: "Executive Membership",
      price: "৳ 500.00 / Year",
      value: 2,
      benefits: [
        "2% Cashback Reward",
        "AED 40 Monthly Credit",
        "Exclusive discounts",
        "Early access to promotions",
        "20 complimentary delivery vouchers",
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.85,
      decoration: const BoxDecoration(
        color: AppColors.ScafoldBackground,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        children: [
          /// HEADER
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              children: [
                ///TODO make flex 4
                const Spacer(),
                const CustomText(
                  "VIP Membership",
                  textStyle: TextStyle(
                    fontSize: AppSizes.fs18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                ///TODO make flex 3
                const Spacer(),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(Icons.close),
                ),
              ],
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: ListView.builder(
                itemCount: membershipPlans.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final model = membershipPlans[index];
                  return MembershipItem(
                    model: model,
                    selectedValue: selectedPlan,
                    onChanged: (v) {
                      setState(() => selectedPlan = v);
                    },
                  );
                },
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: AppColors.ScafoldBackground),
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                CustomButton(
                  text: "Continue To Payment",
                  onPressed: agree ? () {
                    showPaymentBottomSheet(context);
                  } : null,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
void showPaymentBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: false,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return const PaymentBottomSheet();
    },
  );
}



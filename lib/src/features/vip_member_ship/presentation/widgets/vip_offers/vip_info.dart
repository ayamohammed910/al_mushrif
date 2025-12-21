part of '../../../vip_member_ship_imports.dart';

class VipInfo extends StatelessWidget {
  VipInfo({super.key});

  final List<String> executiveBenefits = [
    "2% Cash Back Reward",
    "AED 40 Monthly Credit (AED 480 per year)",
    "Exclusive discounts on selected products",
    "Early access to promotions",
    "Complimentary delivery vouchers",
    "Premium offers exclusive to Executive Members",
    "Bonus Bezat points on selected products",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText("About", textStyle: TextStyle(color: AppColors.grey)),
          SizedBox(height: AppSizes.h5),
          CustomText(
            "JOIN MCOOP",
            textStyle: TextStyle(
              fontSize: AppSizes.fs16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: AppSizes.h5),
          CustomText(
            "Choose your membership type",
            textStyle: TextStyle(
              fontSize: AppSizes.fs16,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: AppSizes.h5),
          CustomText(
            "Best Value & Exclusive Benefits",
            textStyle: TextStyle(
              fontSize: AppSizes.fs16,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: AppSizes.h20),

          BenfitsOffers(),

          CustomText(
            "EVERYDAY BENEFITS",
            textStyle: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),

          BenfitsOffers(),
        ],
      ),
    );
  }
}

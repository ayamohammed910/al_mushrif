part of '../../../vip_member_ship_imports.dart';
class BenfitsOffers extends StatelessWidget {
   BenfitsOffers({super.key});
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        SizedBox(height: AppSizes.h20),

        CustomText(
          "Executive Tier (AED 500 annually)",
          textStyle: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Column(
          children: executiveBenefits.map((text) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: AppSizes.p8),
                    width: 6,
                    height: 6,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),

                  const SizedBox(width: AppSizes.w10),

                  Expanded(
                    child: CustomText(
                      text,
                      textStyle: TextStyle(fontSize: AppSizes.fs14),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),

        SizedBox(height: AppSizes.h20),

      ],
    );
  }
}

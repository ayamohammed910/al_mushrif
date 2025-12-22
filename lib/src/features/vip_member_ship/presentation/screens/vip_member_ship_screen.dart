part of '../../vip_member_ship_imports.dart';

class VipMembershipScreen extends StatefulWidget {
  const VipMembershipScreen({super.key});

  @override
  State<VipMembershipScreen> createState() => _VipMembershipScreenState();
}

class _VipMembershipScreenState extends State<VipMembershipScreen> {
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> otherPlans = [
      {
        'title': 'Executive Tier',
        'price': 'AED 500.00 / Year',
        'benefits': [
          '2% Cash Back Reward',
          'AED 40 Monthly Credit (AED 480 per year)',
          'Exclusive discounts on selected products',
          'Early access to promotions',
          'Twenty (20) complimentary delivery vouchers',
          'Premium offers for Executive Members',
          'Bonus Bezat points on selected products',
        ],
      },
      {
        'title': 'Platinum Membership',
        'price': 'AED 250.00 / Year',
        'benefits': [
          'AED 20 Monthly Credit (AED 240 per year)',
          'Exclusive discounts on selected products',
          'Early access to promotions',
          'Ten (10) complimentary delivery vouchers',
          'Bonus Bezat points on selected products',
        ],
      },
      {
        'title': 'Platinum Membership',
        'price': 'AED 250.00 / Year',
        'benefits': [
          'AED 20 Monthly Credit (AED 240 per year)',
          'Exclusive discounts on selected products',
          'Early access to promotions',
          'Ten (10) complimentary delivery vouchers',
          'Bonus Bezat points on selected products',
        ],
      },
    ];

    return Scaffold(
      backgroundColor: AppColors.ScafoldBackground,
      appBar: const CustomAppBar(title: 'VIP Membership'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.p16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
              'My Current Plan',
              textStyle: TextStyle(
                fontSize: AppSizes.fs20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppSizes.h12),

            MembershipCard(
              title: 'Platinum Membership',
              isCurrent: true,
              benefits: const [
                'AED 20 Monthly Credit (AED 240 per year)',
                'Exclusive discounts on selected products',
                'Early access to promotions',
                'Ten (10) complimentary delivery vouchers',
                'Bonus Bezat points on selected products',
              ],
              footerText: 'Valid For 359 Day',
            ),

            const SizedBox(height: AppSizes.h16),

            CustomButton(
              text: 'Renew',
              color: AppColors.lightRed,
              onPressed: () {},
            ),

            const SizedBox(height: AppSizes.h24),

            const CustomText(
              'Other Plans',
              textStyle: TextStyle(
                fontSize: AppSizes.fs18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppSizes.h12),
            ListView.builder(
              itemCount: otherPlans.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final plan = otherPlans[index];
                final bool isSelected = selectedIndex == index;
                return Padding(
                  padding: const EdgeInsets.only(bottom: AppSizes.h16),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: MembershipCard(
                      title: plan['title'],
                      price: plan['price'],
                      benefits: plan['benefits'],
                      isSelected: isSelected,
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: AppSizes.h8),
            CustomButton(
              text: 'Change Plan',
              color: selectedIndex != null
                  ? AppColors.primary
                  : AppColors.lightRed,
              onPressed: selectedIndex != null
                  ? () => showPaymentBottomSheet(context)
                  : () {},
            ),
          ],
        ),
      ),
    );
  }
  void showPaymentBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: false,
      enableDrag: false,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return const PaymentBottomSheet();
      },
    );
  }
}



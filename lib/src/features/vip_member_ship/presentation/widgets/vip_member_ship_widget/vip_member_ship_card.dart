part of '../../../vip_member_ship_imports.dart';

class MembershipCard extends StatelessWidget {
  final String title;
  final String? price;
  final List<String> benefits;
  final bool isCurrent;
  final String? footerText;
  final bool isSelected;

  const MembershipCard({
    super.key,
    required this.title,
    this.price,
    required this.benefits,
    this.isCurrent = false,
    this.footerText,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.p16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isSelected ? AppColors.primary : Colors.transparent,
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                title,
                textStyle: const TextStyle(
                  fontSize: AppSizes.fs16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (isCurrent) SvgPicture.asset("assets/svg/vip_icon.svg"),
            ],
          ),

          if (price != null) ...[
            const SizedBox(height: AppSizes.h8),
            CustomText(
              price!,
              textStyle: const TextStyle(
                color: AppColors.primary,
                fontSize: AppSizes.fs18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],

          const SizedBox(height: AppSizes.h12),
          const CustomText(
            'Benefits :',
            textStyle: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: AppSizes.h12),
          const CustomText(
            'Platinum Tier (AED 250 annually)',
            textStyle: TextStyle(color: AppColors.grey),
          ),
          const SizedBox(height: AppSizes.h12),

          ...benefits.map(
            (e) => Padding(
              padding: const EdgeInsets.only(bottom: AppSizes.p6),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText('• '),
                  Expanded(
                    child: CustomText(
                      e,
                      textStyle: const TextStyle(color: AppColors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ),

          if (footerText != null) ...[
            const Divider(height: AppSizes.h24, color: AppColors.black),
            CustomText(footerText!, textStyle: const TextStyle(color: Colors.grey)),
          ],
        ],
      ),
    );
  }
}

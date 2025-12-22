part of '../../../vip_member_ship_imports.dart';
class SaveMoneyVip extends StatelessWidget {
  const SaveMoneyVip({super.key});

  @override
  Widget build(BuildContext context) {
    return   Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              const SizedBox(height: AppSizes.h40),
              const CustomText(
                "Save Your Money with",
                textStyle: TextStyle(
                  color: AppColors.white,
                  fontSize: AppSizes.fs16,
                ),
              ),
              const SizedBox(height: AppSizes.h5),
              const CustomText(
                "VIP Membership",
                textStyle: TextStyle(
                  color: AppColors.white,
                  fontSize: AppSizes.fs20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: AppSizes.h16),
              CustomOutlineButton(
                text: 'Get Membership Plans',
                onPressed: () {
                  showVipMembershipBottomSheet(context);
                },
              ),
            ],
          ),
        ),

        Positioned(
          top: -70,
          left: 0,
          right: 0,
          child: Center(
            child: SvgPicture.asset(
              "assets/svg/vip_icon.svg",
              height: 120,
            ),
          ),
        ),
      ],
    );
  }
}
void showVipMembershipBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    enableDrag: false,
    backgroundColor: Colors.transparent,
    builder: (_) => const VipBottomSheet(),
  );
}
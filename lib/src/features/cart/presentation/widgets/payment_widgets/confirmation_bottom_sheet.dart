part of '../../../cart_imports.dart';

class ConfirmationBottomSheet extends StatelessWidget {
  const ConfirmationBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CustomText(
            "Confirmation",
            textStyle: TextStyle(
              fontSize: AppSizes.fs20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: AppSizes.h16),

          SvgPicture.asset(
            "assets/svg/confirmation_alert_icon.svg",
            height: AppSizes.h50,
          ),

          const SizedBox(height: AppSizes.h16),

          const CustomText(
            "Please replace any out-of-stock items "
            "with a similar product of equal or smaller value. "
            "I trust your judgment!",
            textAlign: TextAlign.center,
            textStyle: TextStyle(
              fontSize: AppSizes.fs16,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              height: 1.4,
            ),
          ),

          const SizedBox(height: AppSizes.h24),

          Row(
            children: [
              Expanded(
                child: CustomButton(
                  text: "Yes Replace",
                  color: Colors.green,
                  onPressed: () {},
                ),
              ),

              const SizedBox(width: AppSizes.w12),

              Expanded(
                child: CustomButton(
                  text: "No",
                  color: Colors.grey,
                  onPressed: () {},
                ),
              ),
            ],
          ),

          const SizedBox(height: AppSizes.h12),
        ],
      ),
    );
  }
}

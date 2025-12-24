part of '../../bezat_points.imports.dart';

class BezatPointsBalance extends StatelessWidget {
  const BezatPointsBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(AppSizes.p16),
      padding: const EdgeInsets.all(AppSizes.p20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          colors: [AppColors.primary, AppColors.red],
        ),
      ),
      child: Column(
        children: const [
          CustomText(
            "Your Loyalty Points Balance is",
            textStyle: TextStyle(
              color: AppColors.white,
              fontSize: AppSizes.fs16,
            ),
          ),
          SizedBox(height: AppSizes.h12),
          CustomText(
            "106059 Point  =  ฿ 106.06",
            textStyle: TextStyle(
              color: AppColors.yellow,
              fontSize: AppSizes.fs26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

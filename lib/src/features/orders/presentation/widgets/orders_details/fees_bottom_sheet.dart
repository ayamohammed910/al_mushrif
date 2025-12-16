part of '../../../orders_imports.dart';

class FeesBottomSheet extends StatelessWidget {
  const FeesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.h300,
      padding: const EdgeInsets.all(AppSizes.p20),
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Expanded(
                child: Center(
                  child: CustomText(
                    "Fees Mechanism",
                    textStyle: TextStyle(
                      fontSize: AppSizes.fs20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () => Navigator.pop(context),
                child: const Icon(Icons.close),
              ),
            ],
          ),

          const SizedBox(height: AppSizes.h20),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/png/placeHolder.png",
                width: AppSizes.w50,
                height: AppSizes.h50,
              ),
              SizedBox(width: AppSizes.w12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CustomText(
                      "Environment Fees",
                      textStyle: TextStyle(fontSize: AppSizes.fs20),
                    ),
                    SizedBox(height: AppSizes.h8),
                    CustomText(
                      "This nominal fee of AED 0.50 per bag is "
                      "implemented in accordance with the UAE "
                      "government's sustainability initiative to "
                      "reduce the consumption of single-use plastic bags.",
                      textStyle: TextStyle(
                        color: AppColors.grey,
                        fontSize: AppSizes.fs16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

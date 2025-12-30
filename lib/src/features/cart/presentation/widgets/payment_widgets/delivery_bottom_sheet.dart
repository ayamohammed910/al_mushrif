part of '../../../cart_imports.dart';

class DeliveryBottomSheet extends StatelessWidget {
  const DeliveryBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.h270,
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
                      "Delivery Fee",
                      textStyle: TextStyle(fontSize: AppSizes.fs20),
                    ),
                    SizedBox(height: AppSizes.h8),
                    CustomText(
                      "No surprises. The delivery fee is a fixed rate (AED 10) for any order delivered to your location within our covered zone.",
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

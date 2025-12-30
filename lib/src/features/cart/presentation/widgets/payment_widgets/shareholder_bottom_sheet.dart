part of '../../../cart_imports.dart';
class ShareholderBottomSheet extends StatelessWidget {
  const ShareholderBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.h160,
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
                    "Shareholders ROP",
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
                child: CustomText(
                  "Shareholders ROP Return on purchase",
                  textStyle: TextStyle(fontSize: AppSizes.fs18),
                ),
              ),
              SizedBox(height: AppSizes.h8),
            ],
          ),
        ],
      ),
    );
  }
}

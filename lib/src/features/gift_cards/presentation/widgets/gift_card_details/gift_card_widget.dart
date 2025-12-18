part of '../../../gift_cards_imports.dart';

class GiftCardWidget extends StatelessWidget {
  final GiftModel model;
  final bool showCode;

  const GiftCardWidget({
    super.key,
    required this.model,
    required this.showCode,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: const EdgeInsets.only(top: AppSizes.p60),
          padding: const EdgeInsets.fromLTRB(
            AppSizes.p20,
            AppSizes.p80,
            AppSizes.p20,
            AppSizes.p20,
          ),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              CustomText(
                model.title,
                textStyle: const TextStyle(
                  color: AppColors.white,
                  fontSize: AppSizes.fs16,
                ),
              ),

              const SizedBox(height: AppSizes.h8),

              CustomText(
                model.pay,
                textStyle: const TextStyle(
                  color: AppColors.yellow,
                  fontSize: AppSizes.fs26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: AppSizes.h8),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomText(
                    'and get purchases with ',
                    textStyle: TextStyle(
                      fontSize: AppSizes.fs18,
                      color: AppColors.white,
                    ),
                  ),
                  CustomText(
                    model.purchases,
                    textStyle: const TextStyle(
                      fontSize: AppSizes.fs18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.yellow,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: AppSizes.h8),

              CustomText(
                'Valid For ${model.days} Days',
                textStyle: const TextStyle(
                  color: AppColors.white,
                  fontSize: AppSizes.fs18,
                ),
              ),

              const SizedBox(height: AppSizes.h20),

              if (showCode) ...[
                Container(
                  height: AppSizes.h100,
                  margin: const EdgeInsets.all(AppSizes.p12),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/png/barcode.png',
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(height: AppSizes.h20),
                const DiscountCodeWidget(),
                const SizedBox(height: AppSizes.h10),
              ],
            ],
          ),
        ),

        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Center(
            child: Image.asset(
              'assets/png/gift_card_placeholder.png',
              height: AppSizes.h130,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}

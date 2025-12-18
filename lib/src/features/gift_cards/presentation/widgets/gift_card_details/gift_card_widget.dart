part of '../../../gift_cards_imports.dart';

class GiftCardWidget extends StatelessWidget {
  final GiftModel model;

  const GiftCardWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: AppSizes.p60),
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
                textStyle: TextStyle(
                  color: AppColors.yellow,
                  fontSize: AppSizes.fs26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: AppSizes.h8),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    'and get purchases with ',
                    textStyle: const TextStyle(
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
                      // optional
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

              Padding(
                padding: const EdgeInsets.all(AppSizes.p12),
                child: Container(
                  height: AppSizes.h100,
                  width: double.infinity,
                  color: AppColors.white,
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/png/barcode.png',
                    fit: BoxFit.fill,
                    height: AppSizes.h200,
                    width: AppSizes.w250,
                  ),
                ),
              ),

              const SizedBox(height: AppSizes.h20),
              const DiscountCodeWidget(),
              const SizedBox(height: AppSizes.h10),
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
            ),
          ),
        ),
      ],
    );
  }
}

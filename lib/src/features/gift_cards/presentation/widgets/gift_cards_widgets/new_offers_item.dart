part of '../../../gift_cards_imports.dart';

class NewOffersItem extends StatelessWidget {
  final GiftModel model;
  final Widget? footer;

  const NewOffersItem({super.key, required this.model, this.footer});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppSizes.p12),
      padding: const EdgeInsets.all(AppSizes.p12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                "assets/png/gift_card_placeholder.png",
                height: AppSizes.h50,
                width: AppSizes.w50,
              ),

              const SizedBox(width: AppSizes.w12),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      model.title,
                      textStyle: TextStyle(fontSize: AppSizes.fs16),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        const CustomText(
                          'Pay only ',
                          textStyle: TextStyle(
                            fontSize: AppSizes.fs16,
                            color: AppColors.black,
                          ),
                        ),
                        CustomText(
                          model.pay,
                          textStyle: const TextStyle(
                            fontSize: AppSizes.fs18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSizes.h4),
                    Row(
                      children: [
                        const CustomText(
                          'and get purchases with ',
                          textStyle: TextStyle(
                            fontSize: AppSizes.fs16,
                            color: AppColors.grey,
                          ),
                        ),
                        CustomText(
                          model.purchases,
                          textStyle: const TextStyle(
                            fontSize: AppSizes.fs16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          if (footer != null) ...[
            const SizedBox(height: AppSizes.h10),
            footer!,
          ],
        ],
      ),
    );
  }
}

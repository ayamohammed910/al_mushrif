part of '../../../gift_cards_imports.dart';

class NewOffersItem extends StatelessWidget {
  final GiftModel model;

  const NewOffersItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppSizes.p12),
      padding: const EdgeInsets.all(AppSizes.p12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: AppColors.grey,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      'Pay only ',
                      textStyle: const TextStyle(
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
                        // optional
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSizes.h4),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      'and get purchases with ',
                      textStyle: const TextStyle(
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
                        // optional
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

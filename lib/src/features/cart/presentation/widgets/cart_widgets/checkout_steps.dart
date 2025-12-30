part of '../../../cart_imports.dart';

class CheckoutSteps extends StatelessWidget {
  final int currentStep;
  const CheckoutSteps({super.key, required this.currentStep});

  @override
  Widget build(BuildContext context) {
    final icons = [
      Icons.shopping_bag_outlined,
      Icons.map_outlined,
      Icons.local_shipping_outlined,
      Icons.credit_card_outlined,
      Icons.check_circle_outline,
    ];

    final titles = ["Cart", "Shipping", "Delivery", "Payment", "Success"];

    return Container(
      color: AppColors.white,
      height: AppSizes.h120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(5, (index) {
          final active = index <= currentStep;
          return Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: active
                        ? AppColors.primary
                        : Colors.grey.shade300,
                    child: Icon(
                      icons[index],
                      size: 30,
                      color: active ? AppColors.white : AppColors.black,
                    ),
                  ),
                  const SizedBox(height: AppSizes.h4),
                  CustomText(
                    titles[index],
                    textStyle: TextStyle(
                      fontSize: AppSizes.fs12,
                      color: active ? AppColors.primary : AppColors.black,
                    ),
                  ),
                ],
              ),
              if (index != 4)
                Container(
                  width: AppSizes.w32,
                  height: AppSizes.h4,
                  color: active ? AppColors.primary : AppColors.grey,
                ),
            ],
          );
        }),
      ),
    );
  }
}

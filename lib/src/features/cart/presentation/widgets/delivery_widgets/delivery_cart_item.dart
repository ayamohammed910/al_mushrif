part of '../../../cart_imports.dart';

class DeliveryCartItem extends StatelessWidget {
  final DeliveryItemCard item;

  const DeliveryCartItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.h100,
      margin: const EdgeInsets.symmetric(
        vertical: AppSizes.p8,
        horizontal: AppSizes.p16,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(AppSizes.p8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                item.image,
                width: AppSizes.w80,
                height: AppSizes.h80,
                fit: BoxFit.cover,
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: AppSizes.p8,
                horizontal: AppSizes.p12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    item.name,
                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: AppSizes.h12),
                  Row(
                    children: [
                      CustomText(
                        'Total: ',
                        textStyle: TextStyle(fontSize: AppSizes.fs14),
                      ),
                      CustomText(
                        '${item.price}',
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Quantity:  ${item.quantity}',
              style: TextStyle(fontSize: AppSizes.fs14),
            ),
          ),
        ],
      ),
    );
  }
}

class DeliveryItemCard {
  final String name;
  final double price;
  final int quantity;
  final String image;

  DeliveryItemCard({
    required this.name,
    required this.price,
    required this.quantity,
    required this.image,
  });
}

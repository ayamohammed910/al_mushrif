part of '../../../products_imports.dart';

class CartItemDialog extends StatefulWidget {
  final CartItemModel item;
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;
  final VoidCallback onDelete;
  final VoidCallback onFavorite;

  const CartItemDialog({
    super.key,
    required this.item,
    required this.onIncrease,
    required this.onDecrease,
    required this.onDelete,
    required this.onFavorite,
  });

  @override
  State<CartItemDialog> createState() => _CartItemDialogState();
}

class _CartItemDialogState extends State<CartItemDialog> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.p12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // IMAGE
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                widget.item.imageUrl,
                width: AppSizes.w60,
                height: AppSizes.h60,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(width: AppSizes.w10),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomText(
                    widget.item.name,
                    maxLines: 2,
                    textStyle: const TextStyle(
                      fontSize: AppSizes.fs16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: List.generate(
                      5,
                      (index) => Icon(
                        Icons.star,
                        size: 14,
                        color: index < widget.item.rating
                            ? AppColors.yellow
                            : AppColors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSizes.h8),
                  CustomText(
                    "AED ${widget.item.price.toStringAsFixed(2)}",
                    textStyle: const TextStyle(
                      fontSize: AppSizes.fs14,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                  const SizedBox(height: AppSizes.h8),
                  Row(
                    children: [
                      CustomText(
                        "Sold By : ",
                        textStyle: TextStyle(
                          color: AppColors.grey,
                          fontSize: AppSizes.fs14,
                        ),
                      ),
                      CustomText(
                        "AL Mushrif Coop:",
                        textStyle: TextStyle(
                          color: AppColors.black,
                          fontSize: AppSizes.fs14,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSizes.h8),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          QtyButton(icon: Icons.remove, onTap: widget.onDecrease),

                          const SizedBox(width: 10),
                          Text(
                            "${widget.item.quantity}",
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 10),
                          QtyButton(icon: Icons.add, onTap: widget.onIncrease),
                        ],
                      ),

                      GestureDetector(
                        onTap: widget.onDelete,
                        child: const Icon(
                          Icons.delete,
                          color: Colors.red,
                          size: 26,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.only(right: AppSizes.p16),
              child: Container(
                width: AppSizes.w32,
                height: AppSizes.h32,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: AppColors.ScafoldBackground,
                    width: 1,
                  ),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                    widget.onFavorite();
                  },
                  child: Center(
                    child: SvgPicture.asset(
                      isFavorite
                          ? "assets/svg/fav_icon.svg"
                          : "assets/svg/empty_fav_icon.svg",
                      width: AppSizes.w16,
                      height: AppSizes.h16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// MODEL
class CartItemModel {
  final String name;
  final String imageUrl;
  final double price;
  int quantity;
  final double rating;

  CartItemModel({
    required this.name,
    required this.imageUrl,
    required this.price,
    this.quantity = 1,
    required this.rating,
  });
}

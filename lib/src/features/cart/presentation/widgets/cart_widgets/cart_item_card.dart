part of '../../../cart_imports.dart';

class CartItemCard extends StatefulWidget {
  final CartItem cartItem;
  final VoidCallback onDelete;

  const CartItemCard({
    super.key,
    required this.cartItem,
    required this.onDelete,
  });

  @override
  State<CartItemCard> createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {
  bool isFavorited = false;
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSizes.p16),
      padding: const EdgeInsets.all(AppSizes.p12),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Image
          Image.asset(
            widget.cartItem.image,
            width: AppSizes.w60,
            height: AppSizes.h60,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: AppSizes.w12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CustomText(
                        widget.cartItem.name,
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                        maxLines: 2,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        isFavorited ? Icons.favorite : Icons.favorite_border,
                        size: 22,
                        color: isFavorited ? Colors.red : Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          isFavorited = !isFavorited;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: AppSizes.h4),

                Row(
                  children: List.generate(
                    5,
                    (index) => Icon(
                      Icons.star,
                      size: 14,
                      color: index < widget.cartItem.rating
                          ? AppColors.yellow
                          : AppColors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: AppSizes.h4),

                CustomText(
                  "฿ ${widget.cartItem.price.toStringAsFixed(2)}",
                  textStyle: const TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: AppSizes.h2),

                Row(
                  children: [
                    CustomText(
                      "Sold By: ",
                      textStyle: const TextStyle(
                        fontSize: AppSizes.fs14,
                        color: AppColors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CustomText(
                      widget.cartItem.seller,
                      textStyle: const TextStyle(
                        fontSize: AppSizes.fs14,
                        color: AppColors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSizes.h10),

                Row(
                  children: [
                    QtyButton(
                      icon: Icons.remove,
                      onTap: () {
                        if (quantity > 1) {
                          setState(() => quantity--);
                        }
                      },
                    ),
                    const SizedBox(width: AppSizes.w10),

                    CustomText(
                      quantity.toString(),
                      textStyle: const TextStyle(
                        fontSize: AppSizes.fs20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: AppSizes.w10),

                    QtyButton(
                      icon: Icons.add,
                      onTap: () {
                        setState(() => quantity++);
                      },
                    ),
                    const Spacer(),

                    InkWell(
                      onTap: widget.onDelete,
                      child: SvgPicture.asset("assets/svg/trash_icon.svg"),
                    ),
                    SizedBox(width: AppSizes.w20,)

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

class CartItem {
  final String image;
  final String name;
  final double price;
  final String seller;
  final double rating;
  final String productId;
  int quantity; // Add quantity as a mutable field

  CartItem({
    required this.image,
    required this.name,
    required this.price,
    required this.seller,
    required this.rating,
    required this.productId,
    this.quantity = 1, // Default quantity is 1
  });
}

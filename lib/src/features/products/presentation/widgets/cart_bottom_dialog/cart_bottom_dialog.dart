part of '../../../products_imports.dart';

class CartBottomSheet {
  static void showCartBottomSheet(
    BuildContext context,
    List<CartItemModel> cartItems,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColors.ScafoldBackground,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (_) {
        return StatefulBuilder(
          builder: (context, setState) {
            double total = cartItems.fold(
              0,
              (sum, item) => sum + item.price * item.quantity,
            );

            return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: AppSizes.w40,
                    height: AppSizes.h8,
                    margin: const EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                      color: AppColors.ScafoldBackground,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  const Text(
                    "Cart",
                    style: TextStyle(
                      fontSize: AppSizes.fs20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: AppSizes.h12),

                  // Cart Items List
                  Flexible(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: cartItems.length,
                      itemBuilder: (_, i) {
                        final item = cartItems[i];
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: AppSizes.p6,
                          ),
                          child: CartItemDialog(
                            item: item,
                            onIncrease: () {
                              setState(() => item.quantity++);
                            },
                            onDecrease: () {
                              if (item.quantity > 1) {
                                setState(() => item.quantity--);
                              }
                            },
                            onDelete: () {
                              setState(() => cartItems.removeAt(i));
                            },
                            onFavorite: () {},
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: AppSizes.h12),

                  // Buttons
                  OutlinedButton(
                    onPressed: () => Navigator.pop(context),
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: AppColors.primary),
                      minimumSize: const Size(double.infinity, 55),
                    ),
                    child: const Text(
                      "Continue shopping",
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: AppSizes.fs18,
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSizes.h10),
                  CustomButton(
                    text: "Check out : AED ${total.toStringAsFixed(2)}",
                    onPressed: () {

                    },
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

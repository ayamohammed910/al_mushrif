part of '../../../categories_imports.dart';

class CartDialog extends StatefulWidget {
  const CartDialog({super.key});

  @override
  State<CartDialog> createState() => _CartDialogState();
}

class _CartDialogState extends State<CartDialog> {
  int quantity = 1;
  double price = 4.75;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.ScafoldBackground,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  "assets/png/product.png",
                  height: AppSizes.h120,
                ),
              ),
            ),

            SizedBox(height: AppSizes.h16),

            const CustomText(
              "Toshiba R 03 AAA 4 / PCS",
              textStyle: TextStyle(
                fontSize: AppSizes.fs20,
                color: AppColors.black,
              ),
            ),

            const SizedBox(height: AppSizes.h10),

            Row(
              children: [
                CustomText(
                  " Price :",
                  textStyle: const TextStyle(
                    fontSize: AppSizes.fs18,
                    color: AppColors.grey,
                  ),
                ),
                CustomText(
                  " ₫$price",
                  textStyle: const TextStyle(
                    fontSize: AppSizes.fs18,
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSizes.h20),
            const Divider(color: Colors.grey, thickness: 1, height: 1),
            const SizedBox(height: AppSizes.h20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomText(
                  "Quantity:",
                  textStyle: const TextStyle(
                    fontSize: AppSizes.fs18,
                    color: AppColors.black,
                  ),
                ),
                const SizedBox(width: AppSizes.w24),

                QtyButton(icon: Icons.remove, onTap: () {
                  if (quantity > 1) {
                    setState(() => quantity--);
                  }
                }),

                const SizedBox(width: AppSizes.w32),

                CustomText(
                  quantity.toString(),
                  textStyle: const TextStyle(
                    fontSize: AppSizes.fs20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(width: AppSizes.w32),

               QtyButton(icon: Icons.add, onTap:(){
                 setState(() => quantity++);
               })


              ],
            ),

            const SizedBox(height: AppSizes.h20),
            const Divider(color: Colors.grey, thickness: 1, height: 1),
            const SizedBox(height: AppSizes.h20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                CustomText(
                  "Total Price :",
                  textStyle: const TextStyle(
                    fontSize: AppSizes.fs18,
                    color: AppColors.black,
                  ),
                ),
                CustomText(
                  " ₫${4.88}",
                  textStyle: const TextStyle(
                    fontSize: AppSizes.fs18,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            // 🛒 Add to Cart Button
            SizedBox(
              width: double.infinity,
              child: CustomElevatedButton(
                imagePath: "assets/svg/cart_widgets.svg",
                text: "Add To Cart",
                onPressed: () {},
              ),
            ),

            const SizedBox(height: AppSizes.h10),

            // ✔ Checkout Button
            SizedBox(
              width: double.infinity,
              child: CustomElevatedButton(
                text: "check out",
                onPressed: () {},
                //  "Add To Cart",
              ),
            ),
          ],
        ),
      ),
    );
  }
  }

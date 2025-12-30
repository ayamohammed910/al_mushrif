part of '../../cart_imports.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final List<CartItem> cartItems = [
    CartItem(
      image: "assets/png/product.png",
      name: "Om Ali Dessert",
      price: 13.54,
      seller: "AL Mushrif Coop",
      rating: 3,
      productId: "product_1",
    ),
    CartItem(
      image: "assets/png/product.png",
      name: "PT4 Mix Tray 1.5Kg",
      price: 120.00,
      seller: "PT4 Store",
      rating: 5,
      productId: "product_2",
    ),
    CartItem(
      image: "assets/png/product.png",
      name: "Tamar Biscuits",
      price: 50.00,
      seller: "Tamar Store",
      rating: 4,
      productId: "product_3",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ScafoldBackground,
      appBar: CustomAppBar(title: "Cart", backgroundColor: AppColors.white),
      body: Column(
        children: [
          const CheckoutSteps(currentStep: 0),
          const SizedBox(height: AppSizes.h12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.p16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  'Cart Products',
                  textStyle: TextStyle(
                    fontSize: AppSizes.fs18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      cartItems.clear();
                    });
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/svg/trash_icon.svg"),
                      SizedBox(width: AppSizes.w5,),
                      CustomText(
                        'Clear all cart',
                        textStyle: TextStyle(
                          color: AppColors.primary,
                          fontSize: AppSizes.p16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(AppSizes.p16),
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return CartItemCard(
                  cartItem: cartItems[index],
                  onDelete: () {
                    setState(() {
                      cartItems.remove(cartItems[index]);
                    });
                  },
                );
              },
            ),
          ),

          Container(
            padding: const EdgeInsets.all(AppSizes.p16),
            decoration: const BoxDecoration(color: AppColors.white),
            child: Row(
              children: [
                Expanded(
                  child: CustomButton(text: "continue", onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ShippingPage()), // Navigate to ShippingPage
                    );
                  }),
                ),
                const SizedBox(width: AppSizes.w16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CustomText(
                      "Total",
                      textStyle: TextStyle(
                        fontSize: AppSizes.fs14,
                        color: AppColors.grey,
                      ),
                    ),
                    CustomText(
                      "฿ 237.08",
                      textStyle: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
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

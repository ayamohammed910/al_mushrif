part of '../../../cart_imports.dart';

class DeliveryPage extends StatefulWidget {
  @override
  State<DeliveryPage> createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  final List<DeliveryItemCard> cartItems = [
    DeliveryItemCard(
      name: "PT4 Mix Tray 1.5Kg",
      price: 120.0,
      quantity: 1,
      image: 'assets/png/product.png',
    ),
    DeliveryItemCard(
      name: "Tamar Biscuits",
      price: 50.0,
      quantity: 1,
      image: 'assets/png/product.png',
    ),
    DeliveryItemCard(
      name: "Maamoul Dates Cookies 1",
      price: 40.0,
      quantity: 1,
      image: 'assets/png/product.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ScafoldBackground,
      appBar: CustomAppBar(title: "Cart", backgroundColor: AppColors.white),
      body: Column(
        children: [
          const CheckoutSteps(currentStep: 2),
          SizedBox(height: AppSizes.h10),

          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return DeliveryCartItem(item: item);
              },
            ),
          ),

          ChooseDeliveryType(),
        ],
      ),

      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(AppSizes.p16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomButton(
              text: "Continue to Payment",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentPage(),
                  ),
                );
              },
            ),
            SizedBox(height: AppSizes.h20),
            CustomOutlineButton(
              text: "Continue shopping",
              onPressed: () {
              },
            ),
          ],
        ),
      ),
    );
  }
}

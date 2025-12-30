part of '../../../cart_imports.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  late List<OrderModel> orders;

  @override
  void initState() {
    super.initState();
    orders = [
      OrderModel(
        id: "20251214-14402769",
        date: "14 Dec 2025",
        time: "02:40 PM",
        status: "Pending",
        customerName: "user test1",
        email: "darksideuxais@gmail.com",
        shippingAddress: "vijfug, Abu Dhabi",
        totalAmount: 123.17,
        shippingMethod: "Flat shipping rate",
        paymentMethod: "Wallet",
      ),
      OrderModel(
        id: "20251211-16174883",
        date: "11 Dec 2025",
        time: "04:17 PM",
        status: "Cancelled",
        customerName: "user test1",
        email: "darksideuxais@gmail.com",
        shippingAddress: "Abu Dhabi",
        totalAmount: 45.00,
        shippingMethod: "Flat shipping rate",
        paymentMethod: "Wallet",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ScafoldBackground,
      appBar: CustomAppBar(
        title: "Cart",
        backgroundColor: AppColors.white,
        onBack: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_) => const AppLayoutScreen()),
            (route) => false,
          );
        },

      ),
      body: Column(
        children: [
          const CheckoutSteps(currentStep: 4),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: AppSizes.h60),

                  OrderInfoCard(order: orders[1]),
                  const SizedBox(height: AppSizes.h16),
                  const ProductsSection(),
                  const SizedBox(height: AppSizes.h16),
                  InvoiceSummaryCard(
                    footer: Column(
                      children: [
                        const Divider(),
                        InvoiceRow(title: 'Bezat points earned', value: '0'),
                        InvoiceRow(title: 'New Bezat Balance', value: '106059'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

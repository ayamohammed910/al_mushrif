part of '../../orders_imports.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
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

  void updateOrderStatus(int index, String newStatus) {
    setState(() {
      orders[index] = OrderModel(
        id: orders[index].id,
        date: orders[index].date,
        time: orders[index].time,
        status: newStatus,
        customerName: orders[index].customerName,
        email: orders[index].email,
        shippingAddress: orders[index].shippingAddress,
        totalAmount: orders[index].totalAmount,
        shippingMethod: orders[index].shippingMethod,
        paymentMethod: orders[index].paymentMethod,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ScafoldBackground,
      appBar: const CustomAppBar(title: "My Orders"),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: AppSizes.p16),
            child: InkWell(
              onTap: () {
                if (order.status == "Pending") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => OrderDetailsPage(order: order),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('You can only view pending orders'),
                    ),
                  );
                }
              },
              child: OrderItemWidget(
                order: order,
                onReorder: () {
                  updateOrderStatus(index, "Pending");
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

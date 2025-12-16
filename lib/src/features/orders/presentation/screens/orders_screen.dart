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
      OrderModel(id: "20251214-14402769", date: "14 Dec 2025", time: "02:40 PM", status: "Pending"),
      OrderModel(id: "20251211-16174883", date: "11 Dec 2025", time: "04:17 PM", status: "Cancelled"),
      OrderModel(id: "20251211-00330394", date: "11 Dec 2025", time: "12:33 AM", status: "Cancelled"),
      OrderModel(id: "20251214-14402769", date: "14 Dec 2025", time: "02:40 PM", status: "Pending"),
    ];
  }

  void updateOrderStatus(int index, String newStatus) {
    setState(() {
      orders[index] = OrderModel(
        id: orders[index].id,
        date: orders[index].date,
        time: orders[index].time,
        status: newStatus,
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
                    const SnackBar(content: Text('You can only view pending orders')),
                  );
                }
              },
              child: OrderItemWidget(
                order: order,
                onReorder: () {
                  updateOrderStatus(index, "Pending"); // نحدث الحالة في المصدر
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
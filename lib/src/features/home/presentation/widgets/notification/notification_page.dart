part of '../../../home_imports.dart';

class NotificationsPage extends StatefulWidget {
  NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
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
      appBar: const CustomAppBar(title: 'Notifications'),
      body: ListView.builder(
        padding: const EdgeInsets.all(AppSizes.p16),
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];

          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => OrderSummaryPage(order: order),
                ),
              );
            },
            child: NotificationCard(order: order),
          );
        },
      ),
    );
  }
}

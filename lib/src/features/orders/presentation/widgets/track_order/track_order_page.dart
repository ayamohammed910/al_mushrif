part of '../../../orders_imports.dart';

class TrackOrderPage extends StatelessWidget {
  const TrackOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Track Order"),
      backgroundColor: AppColors.ScafoldBackground,
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.p16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    "Order No. : ",
                    textStyle: TextStyle(color: AppColors.black),
                  ),
                  CustomText(
                    "20251211-00330394",
                    textStyle: TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: AppSizes.h32),
            const OrderStatusTile(
              title: "Placed",
              time: "11 Dec 2025 - 12:33 AM",
              isLast: false,
            ),
            const OrderStatusTile(
              title: "Confirmed",
              time: "11 Dec 2025 - 12:33 AM",
              isLast: false,
            ),
            const OrderStatusTile(
              title: "Preparing",
              time: "11 Dec 2025 - 12:33 AM",
              isLast: false,
            ),
            const OrderStatusTile(
              title: "Cancelled",
              time: "11 Dec 2025 - 12:39 AM",
              isLast: true,
            ),
          ],
        ),
      ),
    );
  }
}

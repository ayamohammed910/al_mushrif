part of '../../bezat_points.imports.dart';

class BezatPointsPage extends StatelessWidget {
  BezatPointsPage({super.key});
  final List<TransactionModel> transactions = [
    TransactionModel(
      title: "Gained",
      amount: "60199 Point",
      transactionNo: "#20251211",
      time: "1 week ago",
    ),
    TransactionModel(
      title: "Deduct",
      amount: "-60199 Point",
      transactionNo: "#20251211",
      time: "1 week ago",
    ),
    TransactionModel(
      title: "Gained",
      amount: "671 Point",
      transactionNo: "#20251208",
      time: "1 week ago",
    ),
    TransactionModel(
      title: "Gained",
      amount: "1053 Point",
      transactionNo: "#20251208",
      time: "1 week ago",
    ),
    TransactionModel(
      title: "Gained",
      amount: "2481 Point",
      transactionNo: "#20251208",
      time: "1 week ago",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ScafoldBackground,
      appBar: CustomAppBar(title: 'Bezat Points'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BezatPointsBalance(),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.p16),
            child: CustomText(
              "Transactions",
              textStyle: TextStyle(
                fontSize: AppSizes.fs20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: AppSizes.h8),

          Expanded(
            child: ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                final item = transactions[index];
                return TransactionItem(
                  title: item.title,
                  amount: item.amount,
                  transactionNo: item.transactionNo,
                  time: item.time,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

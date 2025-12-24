part of '../../wallet_imports.dart';

class WalletScreen extends StatefulWidget {

  WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  final List<TransactionModel> transactions = [
    TransactionModel(
      title: "Deduct",
      amount: "- Ð123.17",
      transactionNo: "#20251214-14402795",
      time: "3 days ago",
    ),
    TransactionModel(
      title: "Income",
      amount: "+ Ð95.78",
      transactionNo: "#20251214-10385757",
      time: "3 days ago",
    ),
    TransactionModel(
      title: "Income",
      amount: "+ Ð120.00",
      transactionNo: "#20251211-17442164",
      time: "6 days ago",
    ),
    TransactionModel(
      title: "Deduct",
      amount: "- Ð123.17",
      transactionNo: "#20251214-14402795",
      time: "3 days ago",
    ),
    TransactionModel(
      title: "Income",
      amount: "+ Ð95.78",
      transactionNo: "#20251214-10385757",
      time: "3 days ago",
    ),
    TransactionModel(
      title: "Income",
      amount: "+ Ð120.00",
      transactionNo: "#20251211-17442164",
      time: "6 days ago",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ScafoldBackground,
      appBar: CustomAppBar(title: 'My Wallet'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: AppSizes.h16),
          WalletBalanceCard(),

          const SizedBox(height: AppSizes.h20),

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

          const SizedBox(height: AppSizes.h12),

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

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomButton(text: '+ Charge Wallet Balance'
              ,
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                  ),
                  builder: (_) => const ChargeWalletBottomSheet(),
                );
              },),
          ),
        ],
      ),
    );
  }
}

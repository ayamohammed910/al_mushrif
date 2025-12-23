part of '../../features/wallet/wallet_imports.dart';

class TransactionItem extends StatelessWidget {
  final String title;
  final String amount;
  final String transactionNo;
  final String time;

  const TransactionItem({
    super.key,
    required this.title,
    required this.amount,
    required this.transactionNo,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: AppSizes.p16,
        vertical: AppSizes.p8,
      ),
      padding: const EdgeInsets.all(AppSizes.p16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            title,
            textStyle: TextStyle(
              color: title == "Deduct" ? AppColors.primary : AppColors.green,
              fontSize: AppSizes.fs16
            ),
          ),
          const SizedBox(height: AppSizes.h4),
          CustomText(
            amount,
            textStyle: TextStyle(
              color: AppColors.primary,
              fontSize: AppSizes.fs20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height:AppSizes.h8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                "Transaction no : $transactionNo",
                textStyle: const TextStyle(fontSize: AppSizes.fs14,fontWeight: FontWeight.bold,),
              ),
              CustomText(
                time,
                textStyle: const TextStyle(fontSize: AppSizes.fs14,color: AppColors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TransactionModel {
  final String title;
  final String amount;
  final String transactionNo;
  final String time;

  TransactionModel({
    required this.title,
    required this.amount,
    required this.transactionNo,
    required this.time,
  });
}

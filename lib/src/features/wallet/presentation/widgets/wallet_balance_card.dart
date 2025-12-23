part of '../../wallet_imports.dart';
class WalletBalanceCard extends StatelessWidget {
  const WalletBalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: AppSizes.p16),
      padding: const EdgeInsets.all(AppSizes.p24),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Image.asset("assets/svg/wallet_logo.png", height: AppSizes.h50),
          const SizedBox(height: AppSizes.h12),
          const CustomText(
            "Your Wallet Balance",
            textStyle: TextStyle(fontSize: AppSizes.fs18),
          ),
          const SizedBox(height: AppSizes.h8),
          const CustomText(
            "Ð 0.00",
            textStyle: TextStyle(
              fontSize: AppSizes.fs24,
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

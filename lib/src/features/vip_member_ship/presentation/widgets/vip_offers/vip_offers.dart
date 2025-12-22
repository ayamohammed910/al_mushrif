part of '../../../vip_member_ship_imports.dart';

class VipOffers extends StatelessWidget {
  const VipOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ScafoldBackground,
      appBar: CustomAppBar(title: ''),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.p16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/png/new_auth_logo.png',
                height: AppSizes.h120,
              ),
            ),
            const SizedBox(height: AppSizes.h40),
            SaveMoneyVip(),
            const SizedBox(height: AppSizes.h20),
            VipInfo(),
            SizedBox(height: AppSizes.h32),
          ],
        ),
      ),
    );
  }
}

part of '../../../gift_cards_imports.dart';

class SubscriberGiftCardDetails extends StatelessWidget {
  final GiftModel model;

  const SubscriberGiftCardDetails({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ScafoldBackground,
      appBar: CustomAppBar(title: 'My Gift Card Details'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset('assets/png/new_auth_logo.png', height: AppSizes.h100),
            const SizedBox(height: AppSizes.h24),

            GiftCardWidget(model: model, showCode: true),
          ],
        ),
      ),
    );
  }
}

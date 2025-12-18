part of '../../../gift_cards_imports.dart';
class UnsubscriberGiftCardDetails extends StatelessWidget {
   final GiftModel model;
  const UnsubscriberGiftCardDetails({
    super.key,
    required this.model,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ScafoldBackground,
      appBar: CustomAppBar(title:'My Gift Card Details' ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset(
              'assets/png/new_auth_logo.png',
              height: AppSizes.h100,
            ),
            const SizedBox(height: AppSizes.h24),
            UnsubsciberGiftCardWidget(model: model),

            const SizedBox(height: AppSizes.h24),
            CustomButton(text: 'Buy Now', onPressed: (){
              showPaymentBottomSheet(context);
            })

          ],
        ),
      ),
    );
  }

  void showPaymentBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: false,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return const PaymentBottomSheet();
      },
    );
  }
  }

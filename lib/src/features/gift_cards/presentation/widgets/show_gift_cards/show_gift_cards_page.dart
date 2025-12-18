part of '../../../gift_cards_imports.dart';

class ShowGiftCardsPage extends StatelessWidget {
  ShowGiftCardsPage({super.key});
  final List<GiftModel> giftOffers = [
    const GiftModel(
      title: 'National Day 54',
      pay: 'Đ 95.00',
      purchases: 'Đ 100.00',
      days: '5',
    ),
    const GiftModel(
      title: 'Black Friday',
      pay: 'Đ 150.00',
      purchases: 'Đ 180.00',
      days: '11',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ScafoldBackground,
      appBar: CustomAppBar(title: "My Gift Cards"),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.p16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: giftOffers.length,
                itemBuilder: (context, index) {
                  return GiftCardItem(model: giftOffers[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

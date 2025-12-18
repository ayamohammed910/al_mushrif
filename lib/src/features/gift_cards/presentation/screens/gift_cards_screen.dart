part of '../../gift_cards_imports.dart';

class GiftCardsScreen extends StatelessWidget {
  GiftCardsScreen({super.key});
  final List<GiftModel> giftOffers = [
    const GiftModel(
      title: 'National Day 54',
      pay: 'Đ 95.00',
      purchases: 'Đ 100.00',
      subscriber: true,
    ),
    const GiftModel(
      title: 'Black Friday',
      pay: 'Đ 150.00',
      purchases: 'Đ 180.00',
      subscriber: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ScafoldBackground,
      appBar: CustomAppBar(title: "Gift Cards"),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.p16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomButton(
              text: "Show My Gift Cards",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ShowGiftCardsPage()),
                );
              },
            ),

            const SizedBox(height: AppSizes.h24),

            const CustomText(
              "New Offers",
              textStyle: TextStyle(
                fontSize: AppSizes.fs18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: AppSizes.h12),

            Expanded(
              child: ListView.builder(
                itemCount: giftOffers.length,
                itemBuilder: (context, index) {
                  final item = giftOffers[index];

                  return InkWell(onTap: (){
                    if(item.subscriber)
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => SubscriberGiftCardDetails(model: item),
                          ),
                        );
                      }
                    else{
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => UnsubscriberGiftCardDetails(model: item),
                        ),
                      );
                    }
                  },
                      child: NewOffersItem(model: giftOffers[index]));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

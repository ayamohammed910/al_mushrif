part of '../../home_imports.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<CategoryItemModel> items = [
    CategoryItemModel(
      title: "Gifting & Specialty",
      imagePath: "assets/png/forget_image.png",
      backgroundColor: AppColors.secondary,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.p16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SearchBar(),
            Bannar(),
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              spacing: 12,
              runSpacing: 12,
              children: [
                ImageCard(
                  imagePath: 'assets/svg/truck.svg',
                  title: 'Free Delivery',
                  subtitle: 'From 200 AED',
                ),

                ImageCard(
                  imagePath: 'assets/svg/feedback.svg',
                  title: '99% Customer',
                  subtitle: 'Feedbacks',
                ),
                ImageCard(
                  imagePath: 'assets/svg/recyle.svg',
                  title: '7 Days',
                  subtitle: 'For Free return',
                ),

                ImageCard(
                  imagePath: 'assets/svg/save_payment.svg',
                  title: 'Payment',
                  subtitle: 'Secure system',
                ),
              ],
            ),
            SizedBox(height: AppSizes.h16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  "Categories",
                  textStyle: TextStyle(fontSize: AppSizes.fs18, color: AppColors.black),
                ),
                InkWell(
                  onTap: () {},
                  child: CustomText(
                    "See all",
                    textStyle: TextStyle(fontSize: AppSizes.fs14, color: AppColors.primary),
                  ),
                ),
              ],
            ),
            CategoriesGridview(items: items),
            SizedBox(height: AppSizes.h50),

            CustomVipCard(order: "See Offers",onTap: (){},),
          ],
        ),
      ),
    );
  }
}

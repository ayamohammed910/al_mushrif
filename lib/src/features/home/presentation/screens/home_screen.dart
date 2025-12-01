part of '../../home_imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map<String, dynamic>> items = [
      {
        "image": "assets/png/forget_image.png",
        "title": "Gifting & Specialty ",
        "color": Colors.orange,
      },
    ];
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SearchBar(),
            Bannar(),
            SizedBox(height: 20,),
            Row(
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
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  "Categories",
                  textStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.black
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: CustomText(
                    "See all",
                    textStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.red
                    ),
                  ),
                ),
              ],
            ),
            CategoriesGridview(items: items),
            SizedBox(height: 50,),

            Image.asset(
              'assets/png/adver.png',
              width: double.infinity,
              height: 100,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}

part of '../../more_imports.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ScafoldBackground,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: const CustomText(
            "More",
            textStyle: TextStyle(fontSize: AppSizes.fs20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildSectionTitle("Your Shortcuts"),
            MoreGrid(items: YourShortcuts),

            const SizedBox(height: AppSizes.h20),
            buildSectionTitle("Browse"),
            MoreGrid(items: Browse),

            const SizedBox(height: AppSizes.h20),
            buildSectionTitle("Support"),
            MoreGrid(items: Support),

            const SizedBox(height: AppSizes.h20),
            buildSectionTitle("Other"),
            MoreGrid(items: Other),
          ],
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSizes.p8),
      child: Text(
        title,
        style: const TextStyle(fontSize: AppSizes.fs18, fontWeight: FontWeight.bold),
      ),
    );
  }
}

List<MoreItem> YourShortcuts = [
  MoreItem(image: "assets/svg/loyalty_icon.svg", title: "Manage Profile"),
  MoreItem(image: "assets/svg/loyalty_discount_icon.svg", title: "My Wallet"),
  MoreItem(image: "assets/svg/gift_card_logo.svg", title: "Gift Cards"),
  MoreItem(image: "assets/svg/loyalty_discount_icon.svg", title: "WishLists"),
  MoreItem(image: "assets/svg/loyalty_icon.svg", title: "Bezat Points"),
  MoreItem(image: "assets/svg/loyalty_icon.svg", title: "Purchased Orders"),
  MoreItem(image: "assets/svg/loyalty_icon.svg", title: "My Addresses"),
  MoreItem(
    image: "assets/svg/loyalty_discount_icon.svg",
    title: "VIP Subscription",
  ),
  MoreItem(image: "assets/svg/loyalty_icon.svg", title: "Return Orders"),
];

List<MoreItem> Browse = [
  MoreItem(image: "assets/svg/all_brands_icon.svg", title: "All Brands"),
  MoreItem(
    image: "assets/svg/all_categories_icon.svg",
    title: "All Categories",
  ),
];

List<MoreItem> Support = [
  MoreItem(image: "assets/svg/all_brands_icon.svg", title: "Support"),
  MoreItem(
    image: "assets/svg/all_categories_icon.svg",
    title: "Support Tickets",
  ),
];

List<MoreItem> Other = [
  MoreItem(image: "assets/svg/loyalty_discount_icon.svg", title: "WishLists"),
  MoreItem(image: "assets/svg/loyalty_icon.svg", title: "Bezat Points"),
  MoreItem(image: "assets/svg/loyalty_icon.svg", title: "Purchased Orders"),
  MoreItem(image: "assets/svg/loyalty_icon.svg", title: "My Addresses"),
  MoreItem(
    image: "assets/svg/loyalty_discount_icon.svg",
    title: "VIP Subscription",
  ),
  MoreItem(image: "assets/svg/loyalty_icon.svg", title: "Return Orders"),
];

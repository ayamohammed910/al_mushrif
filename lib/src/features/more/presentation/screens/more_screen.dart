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
            textStyle: TextStyle(
              fontSize: AppSizes.fs20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildSectionTitle("Your Shortcuts"),
            MoreGrid(items: getYourShortcuts(context)),

            const SizedBox(height: AppSizes.h20),
            buildSectionTitle("Browse"),
            MoreGrid(items: Browse(context)),

            const SizedBox(height: AppSizes.h20),
            buildSectionTitle("Support"),
            MoreGrid(items: support(context)),

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
        style: const TextStyle(
          fontSize: AppSizes.fs18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

List<MoreItem> getYourShortcuts(BuildContext context) {
  return [
    MoreItem(
      image: "assets/svg/loyalty_icon.svg",
      title: "Manage Profile",
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => ProfilePage()),
        );
      },
    ),
    MoreItem(
      image: "assets/svg/loyalty_discount_icon.svg",
      title: "My Wallet",
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => WalletScreen()),
        );
      },
    ),
    MoreItem(
      image: "assets/svg/gift_card_logo.svg",
      title: "Gift Cards",
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => GiftCardsScreen()),
        );
      },
    ),
    MoreItem(image: "assets/svg/loyalty_discount_icon.svg", title: "WishLists"),
    MoreItem(
      image: "assets/svg/loyalty_icon.svg",
      title: "Bezat Points",
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => BezatPointsPage()),
        );
      },
    ),
    MoreItem(image: "assets/svg/loyalty_icon.svg", title: "Purchased Orders"),
    MoreItem(
      image: "assets/svg/loyalty_icon.svg",
      title: "My Addresses",
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const AddressScreen()),
        );
      },
    ),
    MoreItem(
      image: "assets/svg/loyalty_discount_icon.svg",
      title: "VIP Subscription",
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const VipMembershipScreen()),
        );
      },
    ),
    MoreItem(
      image: "assets/svg/loyalty_icon.svg",
      title: "My Orders",
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const OrdersScreen()),
        );
      },
    ),
  ];
}

List<MoreItem> Browse(BuildContext context) {

return[
  MoreItem(image: "assets/svg/all_brands_icon.svg", title: "All Brands",
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) =>  AllBrandsPage()),
      );
    },),
  MoreItem(
    image: "assets/svg/all_categories_icon.svg",
    title: "All Categories",
  ),
];}
List<MoreItem> support(BuildContext context) {
  return [
    MoreItem(
      image: "assets/svg/all_brands_icon.svg",
      title: "Support",
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const SupportPage()),
        );
      },
    ),
    MoreItem(
      image: "assets/svg/all_categories_icon.svg",
      title: "Support Tickets",
      onTap: () {},
    ),
  ];
}

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

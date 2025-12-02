part of '../../offers_imports.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(child: const CustomText("Offers",textStyle: TextStyle(
            fontSize: AppSizes.fs20,fontWeight: FontWeight.bold
          ),)),
          backgroundColor: AppColors.white,
          bottom: const TabBar(
            labelColor: AppColors.primary,
            unselectedLabelColor: AppColors.black,
            indicatorColor: AppColors.primary,
            indicatorWeight: 3,
            tabs: [
              Tab(text: "VIP Offers"),
              Tab(text: "New Arival"),
              Tab(text: "On Sale"),
              Tab(text: "Best Rated"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: VipOffersTab()),
            Center(child: NewArivalTab()),
            Center(child: OnSaleTab()),
            Center(child: BestRatedTab()),
          ],
        ),
      ),
    );
  }
}
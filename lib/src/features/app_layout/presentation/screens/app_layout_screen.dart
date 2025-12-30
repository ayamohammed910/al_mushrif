part of '../../app_layout_imports.dart';
class AppLayoutScreen extends StatefulWidget {
  const AppLayoutScreen({super.key});

  @override
  State<AppLayoutScreen> createState() => _AppLayoutScreenState();
}

class _AppLayoutScreenState extends State<AppLayoutScreen> {
  int _currentIndex = 0;

  final List<Widget> screens = [
    HomeScreen(),
    CategoriesPage(),
    CartScreen(),  // CartScreen should be the target for the "Cart" tab and FAB
    OffersScreen(),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ScafoldBackground,
      body: screens[_currentIndex], // Display the screen based on _currentIndex
      floatingActionButton: FloatingButton(
        onPressed: () {
          // Navigate to CartScreen when FAB is clicked
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const CartScreen()),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          if (index == 2) {
            // If the "Cart" tab is tapped, navigate to CartScreen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const CartScreen()),
            );
          } else {
            setState(() {
              _currentIndex = index; // Update current index for other tabs
            });
          }
        },
      ),
    );
  }
}

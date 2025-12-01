part of '../../app_layout_imports.dart';

class AppLayoutScreen extends StatefulWidget {
  const AppLayoutScreen({super.key});

  @override
  State<AppLayoutScreen> createState() => _AppLayoutScreenState();
}

class _AppLayoutScreenState extends State<AppLayoutScreen> {
  int _currentIndex = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    CategoriesPage(),
     OfferPage(),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[_currentIndex],
      floatingActionButton: FloatingButton(
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

        selectedItemColor: Colors.red.shade700,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          customNavItem(svgPath: 'assets/svg/home.svg', label: 'Home'),
          customNavItem(svgPath: 'assets/svg/category.svg', label: 'Category'),
          customNavItem(svgPath: 'assets/svg/offers.svg', label: 'Offers'),
          customNavItem(svgPath: 'assets/svg/menu_icon.svg', label: 'More'),
        ],
      ),
    );
  }
}

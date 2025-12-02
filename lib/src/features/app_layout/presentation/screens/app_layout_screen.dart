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
    Container(child: Text("text")),
    OffersScreen(),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ScafoldBackground,
      body: screens[_currentIndex],
      floatingActionButton: FloatingButton(onPressed: () {setState(() {
        _currentIndex = 2;
      });}),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: CustomNavBar(

        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

part of '../../app_layout_imports.dart';

class CustomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final icons = [
      "assets/svg/home.svg",
      "assets/svg/category.svg",
      "assets/svg/offers.svg",
      "assets/svg/more.svg",
    ];
    final labels = ["Home", "Categories", "Offers", "More"];

    return AnimatedBottomNavigationBar.builder(
      itemCount: icons.length,
      activeIndex: currentIndex,
      gapLocation: GapLocation.none,
      splashColor: Colors.red.withOpacity(0.2),
      tabBuilder: (index, isActive) {
        final active = currentIndex == index;
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: active ? Color(0xFFC6161D) : Colors.transparent,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(
                icons[index],
                height: active ? 24 : 20,
                color: active ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              labels[index],
              style: TextStyle(
                color: active ? Color(0xFFC6161D) : Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        );
      },
      onTap: onTap,
    );
  }
}
